--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:43:49 06/10/2011
-- Design Name:   
-- Module Name:   C:/Users/pjf/Documents/projects/fpga/xilinx/Network/ip1/UDP_TX_tb.vhd
-- Project Name:  ip1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench for module: arp_TX
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.axi_types.all;
use work.arp_types.all;
use work.xUDP_Common_pkg.all;

 
ENTITY arp_TX_tb IS
END arp_TX_tb;
 
ARCHITECTURE behavior OF arp_TX_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
COMPONENT arp_TX
    generic (
        TIMEOUT_CLKS    : integer := 200    -- # time allowed to tx before abort
      );
    port (
        -- control signals
        send_I_have     : in  std_logic;    -- pulse will be latched
        arp_entry       : in  arp_entry_t;  -- arp target for I_have req (will be latched)
        send_who_has    : in  std_logic;    -- pulse will be latched
        ip_entry        : in  std_logic_vector (31 downto 0);  -- IP target for who_has req (will be latched)
        -- MAC layer TX signals
        mac_tx_req      : out std_logic;  -- indicates that ip wants access to channel (stays up for as long as tx)
        mac_tx_granted  : in  std_logic;  -- indicates that access to channel has been granted            
        data_out_ready  : in  std_logic;    -- indicates system ready to consume data
        data_out        : out axi4_dvlk64_t;
        -- system signals
        cfg             : in xUDP_CONIGURATION_T; -- system config
        clk             : in  std_logic;
        reset           : in  std_logic
    );
END COMPONENT;
    

    --Inputs
    signal send_I_have    : std_logic := '0';
    signal send_who_has   : std_logic := '0';
    signal arp_entry    : arp_entry_t;
    signal ip_entry     : std_logic_vector (31 downto 0);
    signal cfg     : xUDP_CONIGURATION_T;
    signal mac_tx_granted : std_logic := '0';
    signal data_out_ready : std_logic := '0';
    signal clk     : std_logic := '0';
    signal reset    : std_logic := '1';

    --Outputs
    signal mac_tx_req   : std_logic;
    signal data_out   : axi4_dvlk64_t;

    -- Clock period definitions
    constant clk_period : time := 6.4 ns;

    type test_t is (RST,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,DONE);
    signal test    : test_t;

    -- test constants
    constant OUR_MAC : std_logic_vector(47 downto 0) := x"010203040506";
    constant OUR_IP  : std_logic_vector(31 downto 0) := x"A0123859";

 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
    uut: arp_TX 
    generic map (
        TIMEOUT_CLKS    => 100
    )
    PORT MAP (
        -- control signals
        send_I_have     => send_I_have,
        arp_entry       => arp_entry,
        send_who_has    => send_who_has,
        ip_entry        => ip_entry,
        -- MAC layer TX signals
        mac_tx_req      => mac_tx_req,
        mac_tx_granted  => mac_tx_granted,
        data_out_ready  => data_out_ready,
        data_out        => data_out,
        -- system signals
        cfg             => cfg,
        clk             => clk,
        reset           => reset
    );


-- Clock process definitions
clk_process :process
    begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
end process;
 

-- Stimulus process
stim_proc: process
begin
    test <= RST;
    reset <= '1';
    send_I_have <= '0';
    send_who_has <= '0';
    mac_tx_granted <= '0';
    data_out_ready <= '0';
    arp_entry <= empty_arp_entry;

    -- hold reset state for 100 ns.
    wait for 100 ns; 
    wait until falling_edge(clk);

    reset <= '0';
    wait for clk_period*5;

    -- check reset conditions

    assert mac_tx_req = '0'             report "RST: mac_tx_req incorrect" severity failure;
    assert data_out.tvalid = '0'        report "RST: data_out_valid incorrect" severity failure;
    assert data_out.tlast = '0'         report "RST: data_out_last incorrect" severity failure;
    assert data_out.tdata = x"0000000000000000" report "RST: mac_tx_req incorrect" severity failure;

    -- insert stimulus here 

    wait for clk_period*5;
    cfg.mac_address <= OUR_MAC;
    cfg.ip_address <= OUR_IP;

    ------------
    -- TEST 1 -- basic functional tx test - send who has
    ------------

    report "T1: basic functional tx test - send request who has 192.168.4.5";
    test <= T1;
    data_out_ready <= '1';
    ip_entry <= x"c0a80405";
    send_who_has <= '1';
    wait for clk_period;
    ip_entry <= (others => '0');
    send_who_has <= '0';
    wait for clk_period*5;
    assert mac_tx_req = '1'             report "T1a - mac_tx_req incorrect" severity failure;
    assert data_out.tvalid = '0'        report "T1a - tvalid incorrect" severity failure;
    wait for clk_period*5;  
    assert data_out.tvalid = '0'        report "T1b - tvalid incorrect" severity failure;
    mac_tx_granted <= '1';
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T1c d0 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T1c d0 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T1c d0 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"ffffffffffff0102" report "T1c d0 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T1c d1 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T1c d1 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T1c d1 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0304050608060001" report "T1c d1 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T1c d2 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T1c d2 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T1c d2 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0800060400010102" report "T1c d2 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T1c d3 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T1c d3 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T1c d3 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"03040506A0123859" report "T1c d3 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T1c d4 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T1c d4 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T1c d4 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"ffffffffffffC0A8" report "T1c d4 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T1c d5 - tvalid incorrect" severity failure;
    assert data_out.tlast = '1'         report "T1c d5 - tlast incorrect" severity failure;
    assert data_out.tkeep = "11000000"  report "T1c d5 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0405000000000000" report "T1c d5 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '0'        report "T1d - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T1d - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T1d - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0000000000000000" report "T1d - tdata incorrect" severity failure;
    wait for clk_period;
    assert mac_tx_req = '0'             report "T1d - mac_tx_req incorrect" severity failure;
    mac_tx_granted <= '0';
    wait for clk_period*5;

    ------------
    -- TEST 2 -- basic functional tx test - send I have
    ------------

    report "T2: basic functional tx test - send I have 193.169.55.66";
    test <= T2;
    data_out_ready <= '1';
    arp_entry.ip <= x"c1a95566";
    arp_entry.mac <= x"314276839202";
    send_I_have <= '1';
    wait for clk_period;
    arp_entry <= empty_arp_entry;
    send_I_have <= '0';
    wait for clk_period*5;
    assert mac_tx_req = '1'             report "T2a - mac_tx_req incorrect" severity failure;
    assert data_out.tvalid = '0'        report "T2a - tvalid incorrect" severity failure;
    wait for clk_period*5;  
    assert data_out.tvalid = '0'        report "T2b - tvalid incorrect" severity failure;
    mac_tx_granted <= '1';
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T2c d0 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T2c d0 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T2c d0 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"3142768392020102" report "T2c d0 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T2c d1 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T2c d1 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T2c d1 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0304050608060001" report "T2c d1 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T2c d2 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T2c d2 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T2c d2 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0800060400020102" report "T2c d2 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T2c d3 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T2c d3 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T2c d3 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"03040506A0123859" report "T2c d3 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T2c d4 - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T2c d4 - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T2c d4 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"314276839202C1A9" report "T2c d4 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '1'        report "T2c d5 - tvalid incorrect" severity failure;
    assert data_out.tlast = '1'         report "T2c d5 - tlast incorrect" severity failure;
    assert data_out.tkeep = "11000000"  report "T2c d5 - tkeep incorrect" severity failure;
    assert data_out.tdata = x"5566000000000000" report "T2c d5 - tdata incorrect" severity failure;
    wait for clk_period;
    assert data_out.tvalid = '0'        report "T2d - tvalid incorrect" severity failure;
    assert data_out.tlast = '0'         report "T2d - tlast incorrect" severity failure;
    assert data_out.tkeep = "00000000"  report "T2d - tkeep incorrect" severity failure;
    assert data_out.tdata = x"0000000000000000" report "T2d - tdata incorrect" severity failure;
    wait for clk_period;
    assert mac_tx_req = '0'             report "T2d - mac_tx_req incorrect" severity failure;
    mac_tx_granted <= '0';
    wait for clk_period*5;

    test <= DONE;
    report "--- end of tests ---";

    wait;
end process;

END;
