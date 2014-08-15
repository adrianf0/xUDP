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
        CLOCK_FREQ_HZ       : integer := 156250000;  -- freq of data_in_clk -- needed to timout cntr
        ARP_TIMEOUT_S       : integer := 60;    -- ARP response timeout (s)
        ARP_TX_TIMEOUT_CLKS : integer := 200;    -- # time allowed to tx before abort
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
        control             : in  arp_control_type;
        req_count           : out std_logic_vector(7 downto 0);    -- count of arp pkts received
        clks                : in xUDP_CLOCK_T
    );
end component;

    --Inputs
    signal clks            : xUDP_CLOCK_T;
    signal data_in         : axi4_dvlk64_t;
    signal cfg             : xUDP_CONIGURATION_T;
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

    type test_t is (RST,T1,T2,T3,T4,T5,T6,T7,T8,T81,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19,T20,DONE);
    signal test             : test_t;
 
  
begin

-- Instantiate the Unit Under Test (UUT)
uut : arp
    generic map (
        no_default_gateway  => no_default_gateway,
        ARP_TX_TIMEOUT_CLKS => 100,
        CLOCK_FREQ_HZ       => 10,                -- artificially low count to enable pragmatic testing
        ARP_TIMEOUT_S       => 20
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
    cfg.nwk_mask        <= x"FFFFFF00";
    cfg.nwk_gateway     <= x"c0a80501";  -- 192.168.5.9
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

    assert mac_tx_req = '0'         report "RST: mac_tx_req asserted on reset" severity failure;
    assert req_count = x"00"        report "RST: req_count incorrect" severity failure;

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
    assert data_out.tvalid = '1'                report "T1a d0 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T1a d0 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T1a d0 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    assert data_out.tdata = x"00231829267c0023" report "T1a d0 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T1a d1 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T1a d1 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T1a d1 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    assert data_out.tdata = x"2021222308060001" report "T1a d1 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T1a d2 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T1a d2 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T1a d2 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    assert data_out.tdata = x"0800060400020023" report "T1a d2 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T1a d3 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T1a d3 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T1a d3 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    assert data_out.tdata = x"20212223c0a80509" report "T1a d3 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T1a d4 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T1a d4 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T1a d4 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    assert data_out.tdata = x"00231829267cC0A8" report "T1a d4 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T1a d5 - tvalid incorrect" severity failure;
    assert data_out.tlast = '1'                 report "T1a d5 - tlast incorrect" severity failure;
    assert data_out.tkeep = "11000000"          report "T1a d5 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    assert data_out.tdata = x"0501000000000000" report "T1a d5 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '0'                report "T1b - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T1b - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T1b - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0000000000000000" report "T1b - tdata incorrect" severity failure;
    wait for clk_period;
    assert mac_tx_req = '0'                     report "T1c - mac_tx_req incorrect" severity failure;
    wait for clk_period;
    mac_tx_granted <= '0';
    assert req_count = x"01"                    report "T1c: req_count incorrect" severity failure;
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
    assert data_out.tvalid = '1'                report "T2a d0 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T2a d0 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T2a d0 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    assert data_out.tdata = x"00231829267c0023" report "T2a d0 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T2a d1 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T2a d1 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T2a d1 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    assert data_out.tdata = x"2021222308060001" report "T2a d1 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T2a d2 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T2a d2 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T2a d2 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    assert data_out.tdata = x"0800060400020023" report "T2a d2 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T2a d3 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T2a d3 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T2a d3 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    assert data_out.tdata = x"20212223c0a80509" report "T2a d3 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T2a d4 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T2a d4 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T2a d4 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    assert data_out.tdata = x"00231829267cC0A8" report "T2a d4 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T2a d5 - tvalid incorrect" severity failure;
    assert data_out.tlast = '1'                 report "T2a d5 - tlast incorrect" severity failure;
    assert data_out.tkeep = "11000000"          report "T2a d5 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    assert data_out.tdata = x"0501000000000000" report "T2a d5 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '0'                report "T2b - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T2b - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T2b - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0000000000000000" report "T2b - tdata incorrect" severity failure;
    wait for clk_period;
    assert mac_tx_req = '0'                     report "T2c - mac_tx_req incorrect" severity failure;
    wait for clk_period;
    mac_tx_granted <= '0';
    assert req_count = x"02"                    report "T2c: req_count incorrect" severity failure;
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
    assert arp_req_rslt.got_mac = '1'           report "T3: expected got mac" severity failure;
    assert arp_req_rslt.got_err = '0'           report "T3: expected got err = 0" severity failure;
    assert arp_req_rslt.mac = x"00231829267c"   report "T3: wrong mac value" severity failure;
    wait for clk_period*5;

    -- the entry that was in the store should now be in the cache - check it
    report "T4: Send a request for the IP that is already in the cache";
    test <= T4;
    arp_req_req.ip         <= x"c0a80501";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    assert arp_req_rslt.got_mac = '1'           report "T4: expected got mac" severity failure;
    assert arp_req_rslt.got_err = '0'           report "T4: expected got err = 0" severity failure;
    assert arp_req_rslt.mac = x"00231829267c"   report "T4: wrong mac value" severity failure;
    wait for clk_period*5;

    report "T5 - Send a request for the IP that is not cached or in the store";
    test <= T5;
    arp_req_req.ip         <= x"c0a80503";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    report "T5.1: Check that it sends an ARP req who has: 192.168.5.3?";
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
    assert data_out.tvalid = '1'                report "T5a d0 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T5a d0 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T5a d0 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    assert data_out.tdata = x"ffffffffffff0023" report "T5a d0 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T5a d1 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T5a d1 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T5a d1 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    assert data_out.tdata = x"2021222308060001" report "T5a d1 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T5a d2 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T5a d2 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T5a d2 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    assert data_out.tdata = x"0800060400010023" report "T5a d2 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T5a d3 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T5a d3 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T5a d3 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    assert data_out.tdata = x"20212223c0a80509" report "T5a d3 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T5a d4 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T5a d4 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T5a d4 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    assert data_out.tdata = x"ffffffffffffC0A8" report "T5a d4 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T5a d5 - tvalid incorrect" severity failure;
    assert data_out.tlast = '1'                 report "T5a d5 - tlast incorrect" severity failure;
    assert data_out.tkeep = "11000000"          report "T5a d5 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    assert data_out.tdata = x"0503000000000000" report "T5a d5 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '0'                report "T5b - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T5b - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T5b - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0000000000000000" report "T5b - tdata incorrect" severity failure;
    wait for clk_period;
    assert mac_tx_req = '0'                     report "T5c - mac_tx_req incorrect" severity failure;
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

    assert arp_req_rslt.got_mac = '1'           report "T5.2: expected got mac" severity failure;
    assert arp_req_rslt.got_err = '0'           report "T5.2: expected got err = 0" severity failure;
    assert arp_req_rslt.mac = x"021203230454"   report "T5.2: wrong mac value" severity failure;
    assert req_count = x"03"                    report "T5c: req_count incorrect" severity failure;
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

    report "T7 - test that receipt of wrong I Have does not satisfy a current req";
    test <= T7;
    arp_req_req.ip         <= x"c0a8050e";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    report "T7.1: Check that it sends an ARP req who has: 192.168.5.14?";
    report "T7: waiting for chn req";
    wait until mac_tx_req = '1';
    wait until falling_edge(clks.rx_clk);
    mac_tx_granted <= '1';
    data_out_ready <= '1';
    report "T7: waiting for data_out_valid";
    if data_out.tvalid = '0' then
        wait until data_out.tvalid = '1';
        wait until falling_edge(clks.rx_clk);
    end if;
    report "T7: got data_out_valid";
    assert data_out.tvalid = '1'                report "T7a d0 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T7a d0 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T7a d0 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    assert data_out.tdata = x"ffffffffffff0023" report "T7a d0 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T7a d1 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T7a d1 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T7a d1 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    assert data_out.tdata = x"2021222308060001" report "T7a d1 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T7a d2 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T7a d2 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T7a d2 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    assert data_out.tdata = x"0800060400010023" report "T7a d2 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T7a d3 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T7a d3 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T7a d3 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    assert data_out.tdata = x"20212223c0a80509" report "T7a d3 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T7a d4 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T7a d4 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T7a d4 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    assert data_out.tdata = x"ffffffffffffC0A8" report "T7a d4 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T7a d5 - tvalid incorrect" severity failure;
    assert data_out.tlast = '1'                 report "T7a d5 - tlast incorrect" severity failure;
    assert data_out.tkeep = "11000000"          report "T7a d5 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    assert data_out.tdata = x"050e000000000000" report "T7a d5 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '0'                report "T7b - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T7b - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T7b - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0000000000000000" report "T7b - tdata incorrect" severity failure;
    wait for clk_period;
    assert mac_tx_req = '0'                     report "T7c - mac_tx_req incorrect" severity failure;
    wait for clk_period;
    mac_tx_granted <= '0';
    wait for clk_period*5;

    wait for clk_period*10;
    -- Send the reply
    report "T7.2: Send an arbitrary unwanted ARP reply: 192.168.5.143 has mac 57:12:34:19:23:9a";
    data_out_ready <= '1';

    report "T5.2: Send an ARP reply: 192.168.5.3 has mac 02:12:03:23:04:54";

    data_in.tkeep <= "00000000";     -- tkeep not sent until last word
    data_in.tdata <= x"0023202122355712";  -- target mac = 002320212235, src mac = 57:12 ... 
    data_in.tvalid <= '1';
    wait for clk_period;
    data_in.tdata <= x"3419239a08060001";  -- src mac = ...34:19:23:9a, prot values
    wait for clk_period;
    data_in.tdata <= x"0800060400025712";  -- prot values, reply, SHA = 57:12 ...
    wait for clk_period;
    data_in.tdata <= x"3419239aC0A82593";  -- SHA = ...34:19:23:9a, SPA = C0A82593
    wait for clk_period;
    data_in.tdata <= x"002320212223C0A8";  -- THA = 002320212223,  TPA = C0A8 ... 
    wait for clk_period;
    data_in.tdata <= x"0509000000000000";  -- TPA = ... 0509
    data_in.tlast <= '1';
    data_in.tkeep <= "11000000";     -- 2 bytes valid in last word 
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;  
    wait for clk_period;

    assert arp_req_rslt.got_mac = '0'           report "T7.2: expected got mac = 0" severity failure;
    assert arp_req_rslt.got_err = '0'           report "T7.2: expected got err = 0" severity failure;
    wait for clk_period*4;

    -- Send the reply
    report "T7.3: Send a wanted ARP reply: 192.168.5.e has mac 76:34:98:55:aa:37";
    data_out_ready <= '1';
    data_in.tkeep <= "00000000";     -- tkeep not sent until last word
    data_in.tdata <= x"0023202122237634";  -- target mac = 002320212223, src mac = 76:34 ... 
    data_in.tvalid <= '1';
    wait for clk_period;
    data_in.tdata <= x"9855aa3708060001";  -- src mac = ...34:19:23:9a, prot values
    wait for clk_period;
    data_in.tdata <= x"0800060400027634";  -- prot values, reply, SHA = 76:34 ...
    wait for clk_period;
    data_in.tdata <= x"9855aa37C0A8050E";  -- SHA = ...98:55:aa:37, SPA = C0A8050E
    wait for clk_period;
    data_in.tdata <= x"002320212223C0A8";  -- THA = 002320212223,  TPA = C0A8 ... 
    wait for clk_period;
    data_in.tdata <= x"0509000000000000";  -- TPA = ... 0509
    data_in.tlast <= '1';
    data_in.tkeep <= "11000000";     -- 2 bytes valid in last word 
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;  
    wait for clk_period;

    assert arp_req_rslt.got_mac = '1'               report "T7.3: expected got mac" severity failure;
    assert arp_req_rslt.got_err = '0'               report "T7.3: expected got err = 0" severity failure;
    assert arp_req_rslt.mac = x"76349855aa37"       report "T7.3: wrong mac value" severity failure;
    wait for clk_period*4;
    
    -----------------------------
    -- Test for timeout
    -- T8  - send who has, but timeout waiting for reply
    -- T81 - timeout waiting for mac granted
    -----------------------------

    report "T8: Request 192.168.5.4 (not cached), dont send a reply and wait for timeout";
    test <= T8;
    arp_req_req.ip         <= x"c0a80504";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    wait for clk_period*20;
    assert mac_tx_req = '1'                         report "T8: should be requesting TX channel" severity failure;
    wait for clk_period*20;
    mac_tx_granted <= '1';
    wait for clk_period*220;
    assert arp_req_rslt.got_mac = '0'               report "T8: should not have got mac" severity failure;
    assert arp_req_rslt.got_err = '1'               report "T8: should have got err" severity failure;
    mac_tx_granted <= '0';
    wait for clk_period*5;

    report "T81: Request 192.168.5.20 (not cached), dont grant mac access, and wait for timeout";
    test <= T81;
    arp_req_req.ip         <= x"c0a80520";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';    
    wait for clk_period*20;
    assert mac_tx_req = '1'                         report "T81: should be requesting TX channel" severity failure;
    wait for clk_period*20;
    -- don't grant mac channel
    wait for clk_period*220;
    assert arp_req_rslt.got_mac = '0'               report "T81: should not have got mac" severity failure;
    assert arp_req_rslt.got_err = '1'               report "T81: should have got err" severity failure;
    assert mac_tx_req = '0'                         report "T81: should not be requesting TX channel" severity failure;
    wait for clk_period*5;

    ----------------------
    -- T9, T10
    -- Test that we can get a new mapping and then later find it in the cache
    ----------------------
    report "T9: Request 192.168.5.7 (not cached= and Send an ARP reply: 192.168.5.7 has mac 02:15:03:23:04:54";
    test <= T9;
    arp_req_req.ip         <= x"c0a80507";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    assert arp_req_rslt.got_mac = '0'               report "T9: should not yet have mac" severity failure;
    assert arp_req_rslt.got_err = '0'               report "T9: should not have got err" severity failure;

    arp_req_req.lookup_req <= '0';
    wait for clk_period*20;
    assert mac_tx_req = '1'                         report "T9: should be requesting TX channel" severity failure;
    wait for clk_period*5;
    mac_tx_granted <= '1';
    wait for clk_period*50;
    mac_tx_granted <= '0';
    -- Send the reply
    data_out_ready <= '1';
    data_in.tkeep <= "00000000";           -- tkeep not sent until last word
    data_in.tdata <= x"0023202122230215";  -- target mac = 002320212223, src mac = 0215 ... 
    data_in.tvalid <= '1';
    wait for clk_period;
    data_in.tdata <= x"0323045408060001";  -- src mac = ...03230454, prot values
    wait for clk_period;
    data_in.tdata <= x"0800060400020215";  -- prot values, reply, SHA = 0215 ...
    wait for clk_period;
    data_in.tdata <= x"03230454C0A80507";  -- SHA = ...03230454, SPA = C0A80507
    wait for clk_period;
    data_in.tdata <= x"002320212223C0A8";  -- THA = 002320212223,  TPA = C0A8 ... 
    wait for clk_period;
    data_in.tdata <= x"0509000000000000";  -- TPA = ... 0509
    data_in.tlast <= '1';
    data_in.tkeep <= "11000000";     -- 2 bytes valid in last word 
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;  
    wait for clk_period;

    assert arp_req_rslt.got_mac = '1'               report "T9: should have got mac" severity failure;
    assert arp_req_rslt.mac = x"021503230454"       report "T9: incorrect mac" severity failure;
    assert arp_req_rslt.got_err = '0'               report "T9: should not have got err" severity failure;
    wait for clk_period*5;

    report "T10: Request 192.168.5.7 again an expect it to be in the cache";
    test <= T10;
    arp_req_req.ip         <= x"c0a80507";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    assert arp_req_rslt.got_mac = '1'               report "T10: should have mac" severity failure;
    assert arp_req_rslt.got_err = '0'               report "T10: should not have got err" severity failure;

    arp_req_req.lookup_req <= '0';
    wait for clk_period*5;

    ---------------------
    -- Test mapping to gateway for external network
    -- (Gateway addr already cached from T6)
    ---------------------
    report "T11 - Send a request for the IP that is not on the local network (should be found in the cache)";
    test <= T11;
    arp_req_req.ip         <= x"0a000003";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    wait for clk_period;
    report "T11: wait for reply from store";
    if arp_req_rslt.got_mac = '0' and arp_req_rslt.got_err = '0' then
        wait until arp_req_rslt.got_mac = '1' or arp_req_rslt.got_err = '1';
        wait until falling_edge(clks.rx_clk);
    end if;
    assert arp_req_rslt.got_mac = '1'               report "T11: expected got mac" severity failure;
    assert arp_req_rslt.got_err = '0'               report "T11: expected got err = 0" severity failure;
    assert arp_req_rslt.mac = x"00231829267c"       report "T11: wrong mac value" severity failure;
    wait for clk_period*5;

    -------------------------
    -- Test clearing cache
    -------------------------

    report "T12: Clear the cache, Request 192.168.5.7 again an expect a 'who has' to be sent";
    test <= T12;
    control.clear_cache <= '1';
    wait for clk_period;
    control.clear_cache <= '0';
    wait for clk_period;

    arp_req_req.ip         <= x"c0a80507";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    assert arp_req_rslt.got_mac = '0'           report "T12: should not yet have mac" severity failure;
    assert arp_req_rslt.got_err = '0'           report "T12: should not have got err" severity failure;
    arp_req_req.lookup_req <= '0';
    wait for clk_period*20;
    assert mac_tx_req = '1'                     report "T12: should be requesting TX channel" severity failure;
    wait for clk_period;
    mac_tx_granted <= '1';
    report "T12: waiting for data_out_valid";
    if data_out.tvalid = '0' then
        wait until data_out.tvalid = '1';
        wait until falling_edge(clks.rx_clk);
    end if;
    report "T12: got data_out_valid";
    assert data_out.tvalid = '1'                report "T12a d0 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T12a d0 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T12a d0 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    assert data_out.tdata = x"ffffffffffff0023" report "T12a d0 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T12a d1 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T12a d1 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T12a d1 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    assert data_out.tdata = x"2021222308060001" report "T12a d1 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T12a d2 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T12a d2 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T12a d2 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    assert data_out.tdata = x"0800060400010023" report "T12a d2 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T12a d3 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T12a d3 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T12a d3 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    assert data_out.tdata = x"20212223c0a80509" report "T12a d3 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T12a d4 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T12a d4 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T12a d4 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    assert data_out.tdata = x"ffffffffffffC0A8" report "T12a d4 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T12a d5 - tvalid incorrect" severity failure;
    assert data_out.tlast = '1'                 report "T12a d5 - tlast incorrect" severity failure;
    assert data_out.tkeep = "11000000"          report "T12a d5 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    assert data_out.tdata = x"0507000000000000" report "T12a d5 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '0'                report "T12b - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T12b - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T12b - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0000000000000000" report "T12b - tdata incorrect" severity failure;
    wait for clk_period;
    assert mac_tx_req = '0'                     report "T12c - mac_tx_req incorrect" severity failure;
    wait for clk_period;
    mac_tx_granted <= '0';
    wait for clk_period*5;

    -- Send the reply
    data_out_ready <= '1';
     -- Send the reply
    data_out_ready <= '1';
    data_in.tkeep <= "00000000";           -- tkeep not sent until last word
    data_in.tdata <= x"0023202122230225";  -- target mac = 002320212223, src mac = 0225 ... 
    data_in.tvalid <= '1';
    wait for clk_period;
    data_in.tdata <= x"0323145408060001";  -- src mac = ...03231454, prot values
    wait for clk_period;
    data_in.tdata <= x"0800060400020225";  -- prot values, reply, SHA = 0225 ...
    wait for clk_period;
    data_in.tdata <= x"03231454C0A80507";  -- SHA = ...03231454, SPA = C0A80507
    wait for clk_period;
    data_in.tdata <= x"002320212223C0A8";  -- THA = 002320212223,  TPA = C0A8 ... 
    wait for clk_period;
    data_in.tdata <= x"0509000000000000";  -- TPA = ... 0509
    data_in.tlast <= '1';
    data_in.tkeep <= "11000000";     -- 2 bytes valid in last word 
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;  
    wait for clk_period;
   
    assert arp_req_rslt.got_mac = '1'               report "T12: should have got mac";
    assert arp_req_rslt.mac = x"022503231454"       report "T12: incorrect mac";
    assert arp_req_rslt.got_err = '0'               report "T12: should not have got err";
    wait for clk_period*5;
    
    -------------------------------------------------
    -- Tests for requesting IP on different 
    -- MAC returned should be MAC of gateway node
    -------------------------------------------------
    
    report "T13 - Send a request for the IP that is not on the local network";
    test <= T13;
    arp_req_req.ip         <= x"0a000003";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    mac_tx_granted <= '1';
    report "T13: waiting for data_out_valid";
    if data_out.tvalid = '0' then
        wait until data_out.tvalid = '1';
        wait until falling_edge(clks.rx_clk);
    end if;
    -- expect "who has" with IP addr of gateway: c0 a8 05 01
    report "T13: got data_out_valid";
    assert data_out.tvalid = '1'                report "T13a d0 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T13a d0 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T13a d0 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 0  |               target mac                            | src mac (47..32)|
    assert data_out.tdata = x"ffffffffffff0023" report "T13a d0 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T13a d1 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T13a d1 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T13a d1 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 1  |           src mac (32..0)         |   pkt type      |arp type| HW type|
    assert data_out.tdata = x"2021222308060001" report "T13a d1 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T13a d2 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T13a d2 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T13a d2 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 2  |        prot     | HW     | prot   |    opcode       |  SHA (47..32)   |
    assert data_out.tdata = x"0800060400010023" report "T13a d2 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T13a d3 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T13a d3 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T13a d3 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 3  |    SHA (sender HW addr) (31..0)   |   SPA (sender PROT addr) (31..0)  |
    assert data_out.tdata = x"20212223c0a80509" report "T13a d3 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T13a d4 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T13a d4 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T13a d4 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 4  |         THA (target HW addr) (47..0)                |  TPA  (31..16)  |
    assert data_out.tdata = x"ffffffffffffC0A8" report "T13a d4 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'                report "T13a d5 - tvalid incorrect" severity failure;
    assert data_out.tlast = '1'                 report "T13a d5 - tlast incorrect" severity failure;
    assert data_out.tkeep = "11000000"          report "T13a d5 - tkeep incorrect" severity failure;
    --  +-word-+63----56|55----48|47----40|39----32|31----24|23----16|15----08|07----00+
    --    | 5  |   TPA (15..0)   |
    assert data_out.tdata = x"0501000000000000" report "T13a d5 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '0'                report "T13b - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'                 report "T13b - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"          report "T13b - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0000000000000000" report "T13b - tdata incorrect" severity failure;
    wait for clk_period;
    assert mac_tx_req = '0'                     report "T13c - mac_tx_req incorrect" severity failure;
    wait for clk_period;
    mac_tx_granted <= '0';
    wait for clk_period*5;
    wait for clk_period*10;

    -- Send the reply
    data_out_ready <= '1';
    report "T13.2: Send an ARP reply: 192.168.5.1 has mac 08:12:03:23:04:64";
    data_out_ready <= '1';
    data_in.tkeep <= "00000000";           -- tkeep not sent until last word
    data_in.tdata <= x"0023202122230812";  -- target mac = 002320212223, src mac = 0812 ... 
    data_in.tvalid <= '1';
    wait for clk_period;
    data_in.tdata <= x"0323046408060001";  -- src mac = ...03:23:04:64, prot values
    wait for clk_period;
    data_in.tdata <= x"0800060400020812";  -- prot values, reply, SHA = 0812 ...
    wait for clk_period;
    data_in.tdata <= x"03230464C0A80501";  -- SHA = ...03:23:04:64,  SPA = C0A80501
    wait for clk_period;
    data_in.tdata <= x"002320212223C0A8";  -- THA = 002320212223,  TPA = C0A8 ... 
    wait for clk_period;
    data_in.tdata <= x"0509000000000000";  -- TPA = ... 0509
    data_in.tlast <= '1';
    data_in.tkeep <= "11000000";     -- 2 bytes valid in last word 
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;  
    wait for clk_period;

    assert arp_req_rslt.got_mac = '1'               report "T13.2: expected got mac" severity failure;
    assert arp_req_rslt.got_err = '0'               report "T13.2: expected got err = 0" severity failure;
    assert arp_req_rslt.mac = x"081203230464"       report "T13.2: wrong mac value" severity failure;
    wait for clk_period*5;
    
    report "T14 - Send a request for an other IP that is not on the local network";
    test <= T14;
    arp_req_req.ip         <= x"0a000204";
    arp_req_req.lookup_req <= '1';
    wait for clk_period;
    arp_req_req.lookup_req <= '0';
    report "T14: reply should be from cache as the gateway is the same";
    --    wait until arp_req_rslt.got_mac = '1' or arp_req_rslt.got_err = '1';
    assert arp_req_rslt.got_mac = '1'               report "T14: expected got mac" severity failure;
    assert arp_req_rslt.got_err = '0'               report "T14: expected got err = 0" severity failure;
    assert arp_req_rslt.mac = x"081203230464"       report "T14: wrong mac value" severity failure;
    wait for clk_period*5;

    report "--- end of tests ---";
    test <= DONE;
    wait;
end process;

end;
