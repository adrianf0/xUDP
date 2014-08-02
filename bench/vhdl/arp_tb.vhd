--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:35:50 05/31/2011
-- Design Name:   
-- Module Name:   arp_tb.vhd
-- Project Name:  xUDP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arp
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Revision 0.02 - Added tests for ARP timeout
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.arp_types.all;
use work.axi_types.all;
use work.xUDP_Common_pkg.all;

entity arp_tb is
end arp_tb;

architecture behavior of arp_tb is

  -- Component Declaration for the Unit Under Test (UUT)
  
component arp
    generic (
        no_default_gateway  : boolean := true;  -- set to false if communicating with devices accessed
                                                -- though a "default gateway or router"
        CLOCK_FREQ          : integer := 156250000;  -- freq of data_in_clk -- needed to timout cntr
        ARP_TIMEOUT         : integer := 60;    -- ARP response timeout (s)
        ARP_MAX_PKT_TMO     : integer := 5;     -- # wrong nwk pkts received before set error
        MAX_ARP_ENTRIES     : integer := 255    -- max entries in the arp store
        );
    port (
        -- lookup request signals
        arp_req_req         : in  arp_req_req_type;
        arp_req_rslt        : out arp_req_rslt_type;
        -- MAC layer RX signals
        data_in             : in axi4_dvlk64_t; -- AXI4 input stream
        -- MAC layer TX signals
        mac_tx_req          : out std_logic;  -- indicates that ip wants access to channel (stays up for as long as tx)
        mac_tx_granted      : in  std_logic;  -- indicates that access to channel has been granted            
        data_out_ready      : in  std_logic;    -- indicates system ready to consume data
        data_out            : out axi4_dvlk64_t; -- AXI4 output stream
        -- system signals
        cfg                 : in xUDP_CONIGURATION_T;
        nwk_gateway         : in  std_logic_vector (31 downto 0) := (others => '0');  -- IP address of default gateway
        nwk_mask            : in  std_logic_vector (31 downto 0) := (others => '0');  -- Net mask
        control             : in  arp_control_type;
        req_count           : out std_logic_vector(7 downto 0);    -- count of arp pkts received
        clks                : in xUDP_CLOCK_T
    );
end component;

    --Inputs
    signal clks            : xUDP_CLOCK_T;
    signal data_in         : axi4_dvlk64_t;
    signal cfg             : xUDP_CONIGURATION_T;
    signal nwk_gateway     : std_logic_vector(31 downto 0) := (others => '0');
    signal nwk_mask        : std_logic_vector(31 downto 0) := (others => '0');
    signal data_out_ready  : std_logic;
    signal arp_req_req     : arp_req_req_type;
    signal mac_tx_granted  : std_logic;
    --Outputs
    signal arp_req_rslt    : arp_req_rslt_type;
    signal mac_tx_req      : std_logic;
    signal data_out        : axi4_dvlk64_t;
    signal control         : arp_control_type;
    signal req_count       : std_logic_vector(7 downto 0);

    constant no_default_gateway : boolean := false;

    -- Clock period definitions
    constant clk_period : time := 6.4 ns;

    type test_t is (RST,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,DONE);
    signal test             : test_t;
 
  
begin

-- Instantiate the Unit Under Test (UUT)
uut : arp
    generic map (
        no_default_gateway => no_default_gateway,
        CLOCK_FREQ      => 10,                -- artificially low count to enable pragmatic testing
        ARP_TIMEOUT     => 20
    )
    port map (
        -- lookup request mappings
        arp_req_req     => arp_req_req,
        arp_req_rslt    => arp_req_rslt,
        -- rx mappings
        data_in         => data_in,
        -- tx mappings
        mac_tx_req      => mac_tx_req,
        mac_tx_granted  => mac_tx_granted,
        data_out_ready  => data_out_ready,
        data_out        => data_out,
        -- system mappings
        nwk_gateway     => nwk_gateway,
        nwk_mask        => nwk_mask,
        control         => control,
        req_count       => req_count,
        cfg             => cfg,
        clks            => clks
);

-- Clock process definitions
clk_process : process
begin
    clks.tx_clk <= '0';
    wait for clk_period/4;
    clks.rx_clk <= '0';
    wait for clk_period/4;
    clks.tx_clk <= '1';
    wait for clk_period/4;
    clks.rx_clk <= '1';
    wait for clk_period/4;
end process;


-- Stimulus process
stim_proc : process
begin
    test <= RST;
    wait until falling_edge(clks.rx_clk);

    cfg.ip_address      <= x"c0a80509";  -- 192.168.5.9
    cfg.mac_address     <= x"002320212223";
    nwk_mask            <= x"FFFFFF00";
    nwk_gateway         <= x"c0a80501";  -- 192.168.5.9
    mac_tx_granted      <= '0';
    data_out_ready    <= '0';
    control.clear_cache <= '0';
    data_in <= empty_axi4_dvlk64;

    clks.tx_reset <= '1';
    clks.rx_reset <= '1';
    wait for clk_period*10;
    clks.tx_reset <= '0';
    clks.rx_reset <= '0';
    wait for clk_period*5;

    assert mac_tx_req = '0'         report "RST: mac_tx_req asserted on reset" severity error;
    assert req_count = x"00"        report "RST: req_count incorrect" severity error;

    arp_req_req.lookup_req <= '0';
    arp_req_req.ip         <= (others => '0');
    data_out_ready         <= '1';

    report "T1:  Send an ARP request: who has 192.168.5.9? Tell 192.168.5.1";
    test <= T1;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    data_in.tdata <= x"ffffffffffff0023";  -- target mac = ???, src mac = 0023 ... 
    data_in.tvalid <= '1';
    wait for clk_period;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    data_in.tdata <= x"1829267c08060001";  -- src mac = ...1829267c, prot values
    wait for clk_period;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    data_in.tdata <= x"0800060400010023";  -- prot values, request, SHA = 0023 ...
    wait for clk_period;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    data_in.tdata <= x"1829267cC0A80501";  -- SHA = ...1829267c, SPA = C0A80501
    wait for clk_period;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    data_in.tdata <= x"000000000000C0A8";  -- THA = ???, TPA = C0A8... 
    wait for clk_period;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    data_in.tdata <= x"0509000000000000";  -- TPA = ...0509
    data_in.tlast <= '1';
    data_in.tkeep <= "11000000";     -- 2 bytes valid in last word
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;  
    wait for clk_period;
    report "T1:  Expect that we send an 'I have 192.168.5.9' msg";

    -- check tx arbitration signals

    report "T1: waiting for tx req";
    wait until mac_tx_req = '1';

    -- ready to tx
    data_out_ready <= '1';
    mac_tx_granted <= '1';
    report "T1: waiting for data_out_valid";
    wait until data_out.tvalid = '1';
    wait until falling_edge(clks.rx_clk);
    report "T1: got data_out_valid";
    assert data_out.tvalid = '1'                report "T1a d0 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T1a d0 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T1a d0 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    assert data_out.tdata = x"00231829267c0023" report "T1a d0 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T1a d1 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T1a d1 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T1a d1 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    assert data_out.tdata = x"2021222308060001" report "T1a d1 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T1a d2 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T1a d2 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T1a d2 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    assert data_out.tdata = x"0800060400020023" report "T1a d2 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T1a d3 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T1a d3 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T1a d3 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    assert data_out.tdata = x"20212223c0a80509" report "T1a d3 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T1a d4 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T1a d4 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T1a d4 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    assert data_out.tdata = x"00231829267cC0A8" report "T1a d4 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T1a d5 - tvalid incorrect" severity error;
    assert data_out.tlast = '1'                 report "T1a d5 - tlast incorrect" severity error;
    assert data_out.tkeep = "11000000"          report "T1a d5 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    assert data_out.tdata = x"0501000000000000" report "T1a d5 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '0'                report "T1b - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T1b - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T1b - tkeep incorrect" severity error;
    assert data_out.tdata = x"0000000000000000" report "T1b - tdata incorrect" severity error;
    wait for clk_period;
    assert mac_tx_req = '0'                     report "T1c - mac_tx_req incorrect" severity error;
    wait for clk_period;
    mac_tx_granted <= '0';
    assert req_count = x"01"                    report "T1c: req_count incorrect" severity error;
    wait for clk_period*5;

    report "T2:  Send another ARP request: who has 192.168.5.9? Tell 192.168.5.1, hold off tx";
    test <= T2;
    data_out_ready <= '0';
    mac_tx_granted <= '0';
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    data_in.tdata <= x"ffffffffffff0023";  -- target mac = ???, src mac = 0023 ... 
    data_in.tvalid <= '1';
    wait for clk_period;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    data_in.tdata <= x"1829267c08060001";  -- src mac = ...1829267c, prot values
    wait for clk_period;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    data_in.tdata <= x"0800060400010023";  -- prot values, request, SHA = 0023 ...
    wait for clk_period;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    data_in.tdata <= x"1829267cC0A80501";  -- SHA = ...1829267c, SPA = C0A80501
    wait for clk_period;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    data_in.tdata <= x"000000000000C0A8";  -- THA = ???, TPA = C0A8... 
    wait for clk_period;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    data_in.tdata <= x"0509000000000000";  -- TPA = ...0509
    data_in.tlast <= '1';
    data_in.tkeep <= "11000000";     -- 2 bytes valid in last word
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;  
    wait for clk_period;
    report "T2:  Expect that we send an 'I have 192.168.5.9' msg";

    -- check tx arbitration signals

    report "T2: waiting for tx req";
    wait until mac_tx_req = '1';
    -- ready to tx - but wait to give channel access
    wait for clk_period*10;
    mac_tx_granted <= '1';
    -- dhannel granted - but wait to give TX rdy
    wait for clk_period*10;
    data_out_ready <= '1';
    report "T2: waiting for data_out_valid";
    if data_out.tvalid = '0' then
        wait until data_out.tvalid = '1';
        wait until falling_edge(clks.rx_clk);
    end if;
    report "T2: got data_out_valid";
    assert data_out.tvalid = '1'                report "T2a d0 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T2a d0 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T2a d0 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    assert data_out.tdata = x"00231829267c0023" report "T2a d0 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T2a d1 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T2a d1 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T2a d1 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    assert data_out.tdata = x"2021222308060001" report "T2a d1 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T2a d2 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T2a d2 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T2a d2 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    assert data_out.tdata = x"0800060400020023" report "T2a d2 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T2a d3 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T2a d3 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T2a d3 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    assert data_out.tdata = x"20212223c0a80509" report "T2a d3 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T2a d4 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T2a d4 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T2a d4 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    assert data_out.tdata = x"00231829267cC0A8" report "T2a d4 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T2a d5 - tvalid incorrect" severity error;
    assert data_out.tlast = '1'                 report "T2a d5 - tlast incorrect" severity error;
    assert data_out.tkeep = "11000000"          report "T2a d5 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    assert data_out.tdata = x"0501000000000000" report "T2a d5 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '0'                report "T2b - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T2b - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T2b - tkeep incorrect" severity error;
    assert data_out.tdata = x"0000000000000000" report "T2b - tdata incorrect" severity error;
    wait for clk_period;
    assert mac_tx_req = '0'                     report "T2c - mac_tx_req incorrect" severity error;
    wait for clk_period;
    mac_tx_granted <= '0';
    assert req_count = x"02"                    report "T2c: req_count incorrect" severity error;
    wait for clk_period*5;


    report "T3: Send a request for the IP that is already in the store";
    test <= T3;
    arp_req_req.ip         <= x"c0a80501";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    report "T3: wait for reply from store";
    wait until arp_req_rslt.got_mac = '1' or arp_req_rslt.got_err = '1';
    wait until falling_edge(clks.rx_clk);
    assert arp_req_rslt.got_mac = '1'           report "T3: expected got mac" severity error;
    assert arp_req_rslt.got_err = '0'           report "T3: expected got err = 0" severity error;
    assert arp_req_rslt.mac = x"00231829267c"   report "T3: wrong mac value" severity error;
    wait for clk_period*5;

    -- the entry that was in the store should now be in the cache - check it
    report "T4: Send a request for the IP that is already in the cache";
    test <= T4;
    arp_req_req.ip         <= x"c0a80501";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    assert arp_req_rslt.got_mac = '1'           report "T4: expected got mac" severity error;
    assert arp_req_rslt.got_err = '0'           report "T4: expected got err = 0" severity error;
    assert arp_req_rslt.mac = x"00231829267c"   report "T4: wrong mac value" severity error;
    wait for clk_period*5;

    report "T5 - Send a request for the IP that is not cached or in the store";
    test <= T5;
    arp_req_req.ip         <= x"c0a80503";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    report "T5.1: Send an ARP req who has: 192.168.5.3?";
    report "T5: waiting for chn req";
    wait until mac_tx_req = '1';
    wait until falling_edge(clks.rx_clk);
    mac_tx_granted <= '1';
    data_out_ready <= '1';
    report "T5: waiting for data_out_valid";
    if data_out.tvalid = '0' then
        wait until data_out.tvalid = '1';
        wait until falling_edge(clks.rx_clk);
    end if;
    report "T5: got data_out_valid";
    assert data_out.tvalid = '1'                report "T5a d0 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T5a d0 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T5a d0 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    assert data_out.tdata = x"ffffffffffff0023" report "T5a d0 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T5a d1 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T5a d1 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T5a d1 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    assert data_out.tdata = x"2021222308060001" report "T5a d1 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T5a d2 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T5a d2 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T5a d2 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    assert data_out.tdata = x"0800060400010023" report "T5a d2 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T5a d3 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T5a d3 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T5a d3 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    assert data_out.tdata = x"20212223c0a80509" report "T5a d3 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T5a d4 - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T5a d4 - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T5a d4 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    assert data_out.tdata = x"ffffffffffffC0A8" report "T5a d4 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T5a d5 - tvalid incorrect" severity error;
    assert data_out.tlast = '1'                 report "T5a d5 - tlast incorrect" severity error;
    assert data_out.tkeep = "11000000"          report "T5a d5 - tkeep incorrect" severity error;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    assert data_out.tdata = x"0503000000000000" report "T5a d5 - tdata incorrect" severity error;
    wait for clk_period;
    assert data_out.tvalid = '0'                report "T5b - tvalid incorrect" severity error;
    assert data_out.tlast = '0'                 report "T5b - tlast incorrect" severity error;
    assert data_out.tkeep = "00000000"          report "T5b - tkeep incorrect" severity error;
    assert data_out.tdata = x"0000000000000000" report "T5b - tdata incorrect" severity error;
    wait for clk_period;
    assert mac_tx_req = '0'                     report "T5c - mac_tx_req incorrect" severity error;
    wait for clk_period;
    mac_tx_granted <= '0';
    wait for clk_period*5;

    report "T5.2: Send an ARP reply: 192.168.5.3 has mac 02:12:03:23:04:54";

    data_in.tkeep <= "00000000";     -- tkeep not sent until last word
    data_in.tdata <= x"0023202122230212";  -- target mac = 002320212223, src mac = 0212 ... 
    data_in.tvalid <= '1';
    wait for clk_period;
    data_in.tdata <= x"0323045408060001";  -- src mac = ...03230454, prot values
    wait for clk_period;
    data_in.tdata <= x"0800060400020212";  -- prot values, reply, SHA = 0212 ...
    wait for clk_period;
    data_in.tdata <= x"03230454C0A80503";  -- SHA = ...03230454, SPA = C0A80503
    wait for clk_period;
    data_in.tdata <= x"002320212223C0A8";  -- THA = 002320212223,  TPA = C0A8 ... 
    wait for clk_period;
    data_in.tdata <= x"0509000000000000";  -- TPA = ... 0509
    data_in.tlast <= '1';
    data_in.tkeep <= "11000000";     -- 2 bytes valid in last word 
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;  
    wait for clk_period;

    assert arp_req_rslt.got_mac = '1'           report "T5.2: expected got mac" severity error;
    assert arp_req_rslt.got_err = '0'           report "T5.2: expected got err = 0" severity error;
    assert arp_req_rslt.mac = x"021203230454"   report "T5.2: wrong mac value" severity error;
    assert req_count = x"03"                    report "T5c: req_count incorrect" severity error;
    wait for clk_period*5;

    report "T6: check that both these IPs remain in the store";
    test <= T6;
    arp_req_req.ip         <= x"c0a80501";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    wait for clk_period;
    report "T6.1: wait for reply from store";
    wait until arp_req_rslt.got_mac = '1' or arp_req_rslt.got_err = '1';
    wait until falling_edge(clks.rx_clk);
    assert arp_req_rslt.got_mac = '1'           report "T6.1: expected got mac";
    assert arp_req_rslt.got_err = '0'           report "T6.1: expected got err = 0";
    assert arp_req_rslt.mac = x"00231829267c"   report "T6.1: wrong mac value";
    wait for clk_period*2;

    arp_req_req.ip         <= x"c0a80503";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    wait for clk_period;
    report "T6.2: wait for reply from store";
    wait until arp_req_rslt.got_mac = '1' or arp_req_rslt.got_err = '1';
    wait until falling_edge(clks.rx_clk);
    assert arp_req_rslt.got_mac = '1'           report "T6.2: expected got mac";
    assert arp_req_rslt.got_err = '0'           report "T6.2: expected got err = 0";
    assert arp_req_rslt.mac = x"021203230454"   report "T6.2: wrong mac value";
    wait for clk_period*5;

    --
    --    report "T7 - test that receipt of wrong I Have does not satisfy a current req";
    --    arp_req_req.ip         <= x"c0a8050e";
    --    arp_req_req.lookup_req <= '1';
    --    wait for clk_period;
    --    arp_req_req.lookup_req <= '0';
    --    report "T7: waiting for data_out_valid";
    --    wait until data_out_valid = '1';
    --    report "T7: got data_out_valid";
    --    wait for clk_period*10;
    --    data_out_ready         <= '0';
    --    wait for clk_period*2;
    --    data_out_ready         <= '1';
    --    wait for clk_period*12;
    --    assert data_out = x"01" report "T7: expected opcode = 01 for request 'who has'";
    --    -- expect our mac 00 23 20 21 22 23
    --    wait for clk_period;
    --    assert data_out = x"00" report "T7: incorrect our mac.0";
    --    wait for clk_period;
    --    assert data_out = x"23" report "T7: incorrect our mac.1";
    --    wait for clk_period;
    --    assert data_out = x"20" report "T7: incorrect our mac.2";
    --    wait for clk_period;
    --    assert data_out = x"21" report "T7: incorrect our mac.3";
    --    wait for clk_period;
    --    assert data_out = x"22" report "T7: incorrect our mac.4";
    --    wait for clk_period;
    --    assert data_out = x"23" report "T7: incorrect our mac.5";
    --    -- expect our IP c0 a8 05 05
    --    wait for clk_period;
    --    assert data_out = x"c0" report "T7: incorrect our IP.0";
    --    wait for clk_period;
    --    assert data_out = x"a8" report "T7: incorrect our IP.1";
    --    wait for clk_period;
    --    assert data_out = x"05" report "T7: incorrect our IP.2";
    --    wait for clk_period;
    --    assert data_out = x"09" report "T7: incorrect our IP.3";
    --
    --    -- expect empty target mac
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T7: incorrect target mac.0";
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T7: incorrect target mac.1";
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T7: incorrect target mac.2";
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T7: incorrect target mac.3";
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T7: incorrect target mac.4";
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T7: incorrect target mac.5";
    --    -- expect target IP c0 a8 05 0e
    --    wait for clk_period;
    --    assert data_out = x"c0" report "T7: incorrect target IP.0";
    --    wait for clk_period;
    --    assert data_out = x"a8" report "T7: incorrect target IP.1";
    --    wait for clk_period;
    --    assert data_out = x"05" report "T7: incorrect target IP.2";
    --    assert data_out_last = '0' report "T7: data out last incorrectly set on target IP.2 byte";
    --    wait for clk_period;
    --    assert data_out = x"0e" report "T7: incorrect target IP.3";
    --    assert data_out_last = '1' report "T7: data out last should be set";
    --
    --    wait for clk_period*10;
    --
    --    -- Send the reply
    --    data_out_ready <= '1';
    --
    --    report "T7.2: Send an arbitrary unwanted ARP reply: 192.168.5.143 has mac 57:12:34:19:23:9a";
    --    data_in_valid <= '1';
    --    -- dst MAC (bc)
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    -- src MAC
    --    data_in       <= x"57"; wait for clk_period;
    --    data_in       <= x"12"; wait for clk_period;
    --    data_in       <= x"34"; wait for clk_period;
    --    data_in       <= x"19"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"9a"; wait for clk_period;
    --    -- type
    --    data_in       <= x"08"; wait for clk_period;
    --    data_in       <= x"06"; wait for clk_period;
    --    -- HW type
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"01"; wait for clk_period;
    --    -- Protocol type
    --    data_in       <= x"08"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    -- HW size
    --    data_in       <= x"06"; wait for clk_period;
    --    -- protocol size
    --    data_in       <= x"04"; wait for clk_period;
    --    -- Opcode
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"02"; wait for clk_period;
    --    -- Sender MAC
    --    data_in       <= x"57"; wait for clk_period;
    --    data_in       <= x"12"; wait for clk_period;
    --    data_in       <= x"34"; wait for clk_period;
    --    data_in       <= x"19"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"9a"; wait for clk_period;
    --    -- Sender IP
    --    data_in       <= x"c0"; wait for clk_period;
    --    data_in       <= x"a8"; wait for clk_period;
    --    data_in       <= x"25"; wait for clk_period;
    --    data_in       <= x"93"; wait for clk_period;
    --    -- Target MAC
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"20"; wait for clk_period;
    --    data_in       <= x"21"; wait for clk_period;
    --    data_in       <= x"22"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    -- Target IP
    --    data_in       <= x"c0"; wait for clk_period;
    --    data_in       <= x"a8"; wait for clk_period;
    --    data_in       <= x"05"; wait for clk_period;
    --    data_in       <= x"09"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in_last  <= '1';
    --    data_in       <= x"00"; wait for clk_period;
    --    assert arp_req_rslt.got_mac = '0' report "T7.2: expected got mac = 0";
    --    assert arp_req_rslt.got_err = '0' report "T7.2: expected got err = 0";
    --    data_in_last  <= '0';
    --    data_in_valid <= '0';
    --    wait for clk_period*4;
    --
    --    -- Send the reply
    --    data_out_ready <= '1';
    --
    --    report "T7.3: Send a wanted ARP reply: 192.168.5.e has mac 76:34:98:55:aa:37";
    --    data_in_valid <= '1';
    --    -- dst MAC (bc)
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    -- src MAC
    --    data_in       <= x"76"; wait for clk_period;
    --    data_in       <= x"34"; wait for clk_period;
    --    data_in       <= x"98"; wait for clk_period;
    --    data_in       <= x"55"; wait for clk_period;
    --    data_in       <= x"aa"; wait for clk_period;
    --    data_in       <= x"37"; wait for clk_period;
    --    -- type
    --    data_in       <= x"08"; wait for clk_period;
    --    data_in       <= x"06"; wait for clk_period;
    --    -- HW type
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"01"; wait for clk_period;
    --    -- Protocol type
    --    data_in       <= x"08"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    -- HW size
    --    data_in       <= x"06"; wait for clk_period;
    --    -- protocol size
    --    data_in       <= x"04"; wait for clk_period;
    --    -- Opcode
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"02"; wait for clk_period;
    --    -- Sender MAC
    --    data_in       <= x"76"; wait for clk_period;
    --    data_in       <= x"34"; wait for clk_period;
    --    data_in       <= x"98"; wait for clk_period;
    --    data_in       <= x"55"; wait for clk_period;
    --    data_in       <= x"aa"; wait for clk_period;
    --    data_in       <= x"37"; wait for clk_period;
    --    -- Sender IP
    --    data_in       <= x"c0"; wait for clk_period;
    --    data_in       <= x"a8"; wait for clk_period;
    --    data_in       <= x"05"; wait for clk_period;
    --    data_in       <= x"0e"; wait for clk_period;
    --    -- Target MAC
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"20"; wait for clk_period;
    --    data_in       <= x"21"; wait for clk_period;
    --    data_in       <= x"22"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    -- Target IP
    --    data_in       <= x"c0"; wait for clk_period;
    --    data_in       <= x"a8"; wait for clk_period;
    --    data_in       <= x"05"; wait for clk_period;
    --    data_in       <= x"09"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    assert arp_req_rslt.got_mac = '1' report "T7.3: expected got mac";
    --    assert arp_req_rslt.got_err = '0' report "T7.3: expected got err = 0";
    --    assert arp_req_rslt.mac = x"76349855aa37" report "T7.3: wrong mac value";
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in_last  <= '1';
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in_last  <= '0';
    --    data_in_valid <= '0';
    --    wait for clk_period*4;
    --
    --
    --    report "T8: Request 192.168.5.4 (not cached), dont send a reply and wait for timeout";
    --    arp_req_req.ip         <= x"c0a80504";
    --    arp_req_req.lookup_req <= '1';
    --    wait for clk_period;
    --    arp_req_req.lookup_req <= '0';
    --    wait for clk_period*20;
    --    assert mac_tx_req = '1' report "T8: should be requesting TX channel";
    --    wait for clk_period*220;
    --    assert arp_req_rslt.got_mac = '0' report "T8: should not have got mac";
    --    assert arp_req_rslt.got_err = '1' report "T8: should have got err";
    --
    --    report "T9: Request 192.168.5.7 (not cached= and Send an ARP reply: 192.168.5.7 has mac 02:15:03:23:04:54";
    --    arp_req_req.ip         <= x"c0a80507";
    --    arp_req_req.lookup_req <= '1';
    --    wait for clk_period;
    --    assert arp_req_rslt.got_mac = '0' report "T9: should not yet have mac";
    --    assert arp_req_rslt.got_err = '0' report "T9: should not have got err";
    --
    --    arp_req_req.lookup_req <= '0';
    --    wait for clk_period*20;
    --    assert mac_tx_req = '1' report "T9: should be requesting TX channel";
    --    wait for clk_period*50;
    --    -- Send the reply
    --    data_out_ready         <= '1';
    --
    --    data_in_valid <= '1';
    --    -- dst MAC (bc)
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    -- src MAC
    --    data_in       <= x"02"; wait for clk_period;
    --    data_in       <= x"15"; wait for clk_period;
    --    data_in       <= x"03"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"04"; wait for clk_period;
    --    data_in       <= x"54"; wait for clk_period;
    --    -- type
    --    data_in       <= x"08"; wait for clk_period;
    --    data_in       <= x"06"; wait for clk_period;
    --    -- HW type
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"01"; wait for clk_period;
    --    -- Protocol type
    --    data_in       <= x"08"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    -- HW size
    --    data_in       <= x"06"; wait for clk_period;
    --    -- protocol size
    --    data_in       <= x"04"; wait for clk_period;
    --    -- Opcode
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"02"; wait for clk_period;
    --    -- Sender MAC
    --    data_in       <= x"02"; wait for clk_period;
    --    data_in       <= x"15"; wait for clk_period;
    --    data_in       <= x"03"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"04"; wait for clk_period;
    --    data_in       <= x"54"; wait for clk_period;
    --    -- Sender IP
    --    data_in       <= x"c0"; wait for clk_period;
    --    data_in       <= x"a8"; wait for clk_period;
    --    data_in       <= x"05"; wait for clk_period;
    --    data_in       <= x"07"; wait for clk_period;
    --    -- Target MAC
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"20"; wait for clk_period;
    --    data_in       <= x"21"; wait for clk_period;
    --    data_in       <= x"22"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    -- Target IP
    --    data_in       <= x"c0"; wait for clk_period;
    --    data_in       <= x"a8"; wait for clk_period;
    --    data_in       <= x"05"; wait for clk_period;
    --    data_in       <= x"09"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in_last  <= '1';
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in_last  <= '0';
    --    data_in_valid <= '0';
    --    wait for clk_period;
    --    assert arp_req_rslt.got_mac = '1' report "T9: should have got mac";
    --    assert arp_req_rslt.mac = x"021503230454" report "T9: incorrect mac";
    --    assert arp_req_rslt.got_err = '0' report "T9: should not have got err";
    --    wait for clk_period*10;
    --
    --    report "T10: Request 192.168.5.7 again an expect it to be in the cache";
    --    arp_req_req.ip         <= x"c0a80507";
    --    arp_req_req.lookup_req <= '1';
    --    wait for clk_period;
    --    assert arp_req_rslt.got_mac = '1' report "T10: should have mac";
    --    assert arp_req_rslt.got_err = '0' report "T10: should not have got err";
    --
    --    arp_req_req.lookup_req <= '0';
    --    wait for clk_period*20;
    --    
    ----
    --    wait until clk = '1';
    --    report "T11 - Send a request for the IP that is not on the local network";
    --    arp_req_req.ip         <= x"0a000003";  --c0a80501
    --    arp_req_req.lookup_req <= '1';
    --    wait until clk = '1';               --for clk_period
    --    arp_req_req.lookup_req <= '0';
    --    report "T11: wait for reply from store";
    --    wait until arp_req_rslt.got_mac = '1' or arp_req_rslt.got_err = '1';
    --    assert arp_req_rslt.got_mac = '1' report "T11: expected got mac";
    --    assert arp_req_rslt.got_err = '0' report "T11: expected got err = 0";
    --    assert arp_req_rslt.mac = x"00231829267c" report "T11: wrong mac value";-- severity error;
    --    wait for clk_period*2;    
    ----
    --
    --    report "T12: Clear the cache, Request 192.168.5.7 again an expect a 'who has' to be sent";
    --    control.clear_cache <= '1';
    --    wait for clk_period;
    --    control.clear_cache <= '0';
    --    wait for clk_period;
    --
    --    arp_req_req.ip         <= x"c0a80507";
    --    arp_req_req.lookup_req <= '1';
    --    wait for clk_period;
    --    assert arp_req_rslt.got_mac = '0' report "T12: should not yet have mac";
    --    assert arp_req_rslt.got_err = '0' report "T12: should not have got err";
    --
    --    arp_req_req.lookup_req <= '0';
    --    wait for clk_period*20;
    --
    --
    --    assert mac_tx_req = '1' report "T12: should be requesting TX channel";
    --    wait for clk_period*50;
    --    -- Send the reply
    --    data_out_ready <= '1';
    --
    --    data_in_valid <= '1';
    --    -- dst MAC (bc)
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    -- src MAC
    --    data_in       <= x"02"; wait for clk_period;
    --    data_in       <= x"15"; wait for clk_period;
    --    data_in       <= x"03"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"04"; wait for clk_period;
    --    data_in       <= x"54"; wait for clk_period;
    --    -- type
    --    data_in       <= x"08"; wait for clk_period;
    --    data_in       <= x"06"; wait for clk_period;
    --    -- HW type
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"01"; wait for clk_period;
    --    -- Protocol type
    --    data_in       <= x"08"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    -- HW size
    --    data_in       <= x"06"; wait for clk_period;
    --    -- protocol size
    --    data_in       <= x"04"; wait for clk_period;
    --    -- Opcode
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"02"; wait for clk_period;
    --    -- Sender MAC
    --    data_in       <= x"02"; wait for clk_period;
    --    data_in       <= x"15"; wait for clk_period;
    --    data_in       <= x"03"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"55"; wait for clk_period;
    --    data_in       <= x"54"; wait for clk_period;
    --    -- Sender IP
    --    data_in       <= x"c0"; wait for clk_period;
    --    data_in       <= x"a8"; wait for clk_period;
    --    data_in       <= x"05"; wait for clk_period;
    --    data_in       <= x"07"; wait for clk_period;
    --    -- Target MAC
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"20"; wait for clk_period;
    --    data_in       <= x"21"; wait for clk_period;
    --    data_in       <= x"22"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    -- Target IP
    --    data_in       <= x"c0"; wait for clk_period;
    --    data_in       <= x"a8"; wait for clk_period;
    --    data_in       <= x"05"; wait for clk_period;
    --    data_in       <= x"09"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in_last  <= '1';
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in_last  <= '0';
    --    data_in_valid <= '0';
    --    wait for clk_period;
    --    assert arp_req_rslt.got_mac = '1' report "T12: should have got mac";
    --    assert arp_req_rslt.mac = x"021503235554" report "T12: incorrect mac";
    --    assert arp_req_rslt.got_err = '0' report "T12: should not have got err";
    --    wait for clk_period*10;
    --
    ----    
    --    report "T13 - Send a request for the IP that is not on the local network";
    --    arp_req_req.ip         <= x"0a000003";
    --    arp_req_req.lookup_req <= '1';
    --    wait for clk_period;
    --    arp_req_req.lookup_req <= '0';
    --    report "T13: waiting for data_out_valid";
    --    wait until data_out_valid = '1';
    --    report "T13: got data_out_valid";
    --    wait for clk_period*10;
    --    data_out_ready         <= '0';
    --    wait for clk_period*2;
    --    data_out_ready         <= '1';
    --    wait for clk_period*12;
    --    assert data_out = x"01" report "T13: expected opcode = 01 for request 'who has'";
    --    -- expect our mac 00 23 20 21 22 23
    --    wait for clk_period;
    --    assert data_out = x"00" report "T13: incorrect our mac.0";
    --    wait for clk_period;
    --    assert data_out = x"23" report "T13: incorrect our mac.1";
    --    wait for clk_period;
    --    assert data_out = x"20" report "T13: incorrect our mac.2";
    --    wait for clk_period;
    --    assert data_out = x"21" report "T13: incorrect our mac.3";
    --    wait for clk_period;
    --    assert data_out = x"22" report "T13: incorrect our mac.4";
    --    wait for clk_period;
    --    assert data_out = x"23" report "T13: incorrect our mac.5";
    --    -- expect our IP c0 a8 05 05
    --    wait for clk_period;
    --    assert data_out = x"c0" report "T13: incorrect our IP.0";
    --    wait for clk_period;
    --    assert data_out = x"a8" report "T13: incorrect our IP.1";
    --    wait for clk_period;
    --    assert data_out = x"05" report "T13: incorrect our IP.2";
    --    wait for clk_period;
    --    assert data_out = x"09" report "T13: incorrect our IP.3";
    --
    --    -- expect empty target mac 
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T13: incorrect target mac.0";
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T13: incorrect target mac.1";
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T13: incorrect target mac.2";
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T13: incorrect target mac.3";
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T13: incorrect target mac.4";
    --    wait for clk_period;
    --    assert data_out = x"ff" report "T13: incorrect target mac.5";
    --    -- expect target IP c0 a8 05 01
    --    wait for clk_period;
    --    assert data_out = x"c0" report "T13: incorrect target IP.0";
    --    wait for clk_period;
    --    assert data_out = x"a8" report "T13: incorrect target IP.1";
    --    wait for clk_period;
    --    assert data_out = x"05" report "T13: incorrect target IP.2";
    --    assert data_out_last = '0' report "T13: data out last incorrectly set on target IP.2 byte";
    --    wait for clk_period;
    --    assert data_out = x"01" report "T13: incorrect target IP.3";
    --    assert data_out_last = '1' report "T13: data out last should be set";
    --
    --    wait for clk_period*10;
    --
    --    -- Send the reply
    --    data_out_ready <= '1';
    --
    --    report "T13.2: Send an ARP reply: 192.168.5.1 has mac 02:12:03:23:04:54";
    --    data_in_valid <= '1';
    --    -- dst MAC (bc)
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    data_in       <= x"ff"; wait for clk_period;
    --    -- src MAC
    --    data_in       <= x"02"; wait for clk_period;
    --    data_in       <= x"12"; wait for clk_period;
    --    data_in       <= x"03"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"04"; wait for clk_period;
    --    data_in       <= x"54"; wait for clk_period;
    --    -- type
    --    data_in       <= x"08"; wait for clk_period;
    --    data_in       <= x"06"; wait for clk_period;
    --    -- HW type
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"01"; wait for clk_period;
    --    -- Protocol type
    --    data_in       <= x"08"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    -- HW size
    --    data_in       <= x"06"; wait for clk_period;
    --    -- protocol size
    --    data_in       <= x"04"; wait for clk_period;
    --    -- Opcode
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"02"; wait for clk_period;
    --    -- Sender MAC
    --    data_in       <= x"02"; wait for clk_period;
    --    data_in       <= x"12"; wait for clk_period;
    --    data_in       <= x"03"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"04"; wait for clk_period;
    --    data_in       <= x"54"; wait for clk_period;
    --    -- Sender IP
    --    data_in       <= x"c0"; wait for clk_period;
    --    data_in       <= x"a8"; wait for clk_period;
    --    data_in       <= x"05"; wait for clk_period;
    --    data_in       <= x"01"; wait for clk_period;
    --    -- Target MAC
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    data_in       <= x"20"; wait for clk_period;
    --    data_in       <= x"21"; wait for clk_period;
    --    data_in       <= x"22"; wait for clk_period;
    --    data_in       <= x"23"; wait for clk_period;
    --    -- Target IP
    --    data_in       <= x"c0"; wait for clk_period;
    --    data_in       <= x"a8"; wait for clk_period;
    --    data_in       <= x"05"; wait for clk_period;
    --    data_in       <= x"09"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in       <= x"00"; wait for clk_period;
    --    assert arp_req_rslt.got_mac = '1' report "T13.2: expected got mac";
    --    assert arp_req_rslt.got_err = '0' report "T13.2: expected got err = 0";
    --    assert arp_req_rslt.mac = x"021203230454" report "T13.2: wrong mac value";
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in_last  <= '1';
    --    data_in       <= x"00"; wait for clk_period;
    --    data_in_last  <= '0';
    --    data_in_valid <= '0';
    --    wait for clk_period*4;
    --
    --    report "T14 - Send a request for an other IP that is not on the local network";
    --    arp_req_req.ip         <= x"0a000204";
    --    arp_req_req.lookup_req <= '1';
    --    wait for clk_period;
    --    arp_req_req.lookup_req <= '0';
    --    report "T14: reply should be from cache";
    ----    wait until arp_req_rslt.got_mac = '1' or arp_req_rslt.got_err = '1';
    --    assert arp_req_rslt.got_mac = '1' report "T14: expected got mac";
    --    assert arp_req_rslt.got_err = '0' report "T14: expected got err = 0";
    --    assert arp_req_rslt.mac = x"021203230454" report "T14: wrong mac value";
    --    wait for clk_period*2;    
    ----    
    --    

    report "--- end of tests ---";
    test <= DONE;
    wait;
end process;

end;
