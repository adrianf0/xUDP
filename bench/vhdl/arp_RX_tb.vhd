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

ENTITY arp_RX_tb IS
END arp_RX_tb;
 
ARCHITECTURE behavior OF arp_RX_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
COMPONENT arp_RX
    PORT(
        -- MAC layer RX signals
        data_in                 : in axi4_dvlk64_t; -- ethernet frame (from dst mac addr through to last word of frame)
        -- ARP output signals
        recv_who_has            : out std_logic;    -- pulse will be latched
        arp_entry_for_who_has   : out arp_entry_t;  -- target for who_has msg (Iie, who to reply to)
        recv_I_have             : out std_logic;    -- pulse will be latched
        arp_entry_for_I_have    : out arp_entry_t;  -- arp target for I_have msg
        -- control and status signals
        req_count               : out std_logic_vector(7 downto 0);   -- count of arp pkts received
        -- system signals
        cfg                     : in xUDP_CONIGURATION_T; -- system config
        clk                     : in  std_logic;
        reset                   : in  std_logic
    );
END COMPONENT;
    

    --Inputs
    signal data_in    : axi4_dvlk64_t;
    signal cfg      : xUDP_CONIGURATION_T;
    signal clk     : std_logic := '0';
    signal reset    : std_logic := '1';

    --Outputs
    signal recv_who_has     : std_logic;
    signal recv_I_have    : std_logic;
    signal arp_entry_for_who_has  : arp_entry_t;
    signal arp_entry_for_I_have  : arp_entry_t;
    signal req_count     : std_logic_vector(7 downto 0);

    -- Clock period definitions
    constant clk_period : time := 6.4 ns;

    -- TB internal signals
    signal got_who_has     : std_logic := '0';
    signal got_I_have    : std_logic := '0';
    signal entry_for_who_has  : arp_entry_t;
    signal entry_for_I_have  : arp_entry_t;
    signal clear_state     : std_logic := '0';

    type test_t is (RST,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,DONE);
    signal test    : test_t;

    -- test constants
    constant OUR_MAC : std_logic_vector(47 downto 0) := x"261537045869";
    constant OUR_IP  : std_logic_vector(31 downto 0) := x"C0A80405";
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
    uut: arp_RX PORT MAP (
        -- MAC layer RX signals
        data_in                 => data_in,
        -- ARP output signals
        recv_who_has            => recv_who_has,
        arp_entry_for_who_has   => arp_entry_for_who_has,
        recv_I_have             => recv_I_have,
        arp_entry_for_I_have    => arp_entry_for_I_have,
        -- control and status signals
        req_count               => req_count,
        -- system signals
        cfg                     => cfg,
        clk                     => clk,
        reset                   => reset
    );


-- Clock process definitions
clk_process : process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
end process;

-- state capture process
capture_process : process(clk)
begin
    if clear_state = '1' then
        got_who_has <= '0';
        got_I_have <= '0';
    else
        if recv_who_has = '1' then
            got_who_has <= '1';
            entry_for_who_has <= arp_entry_for_who_has;
        end if;
        if recv_I_have = '1' then
            got_I_have <= '1';
            entry_for_I_have <= arp_entry_for_I_have;
        end if;
    end if;
end process;
 
-- Stimulus process
stim_proc: process
begin
    test <= RST;
    reset <= '1';
    data_in <= empty_axi4_dvlk64;
    cfg.ip_address <= OUR_IP;

    -- hold reset state for 100 ns.
    wait for 100 ns; 
    wait until falling_edge(clk);

    reset <= '0';
    wait for clk_period*5;

    -- check reset conditions  
    assert recv_who_has = '0'           report "RST: recv_who_has incorrect" severity failure;
    assert recv_I_have = '0'            report "RST: recv_I_have incorrect" severity failure;
    assert req_count = x"00"            report "RST: req_count incorrect" severity failure;

    -- insert stimulus here 

    wait for clk_period*5;

    ------------
    -- TEST 1 -- basic functional rx test 
    ------------

    report "T1: basic functional rx test - request who has 192.168.4.5";
    test <= T1;
    clear_state <= '1';
    wait for clk_period;
    clear_state <= '0';
    assert got_who_has = '0'            report "T1-: got_who_has incorrect" severity failure;
    assert got_I_have = '0'             report "T1-: got_I_have incorrect" severity failure;  
    data_in.tdata <= x"ffffffffffff0102";  -- target mac = ???, src mac = 0102 ... 
    data_in.tvalid <= '1';
    wait for clk_period;
    data_in.tdata <= x"0304050608060001";  -- src mac = ...03040506, prot values
    wait for clk_period;
    data_in.tdata <= x"0800060400010102";  -- prot values, request, SHA = 0102 ...
    wait for clk_period;
    data_in.tdata <= x"0304050644871234";  -- SHA = ...03040506, SPA = 44871234
    wait for clk_period;
    data_in.tdata <= x"ffffffffffffC0A8";  -- THA = ???, TPA = C0A8 ... 
    wait for clk_period;
    data_in.tdata <= x"0405000000000000";  -- TPA = ... 0405
    data_in.tlast <= '1';
    data_in.tkeep <= "11000000";     -- 2 bytes valid in last word
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;  
    wait for clk_period;
    assert got_who_has = '1'            report "T1a: got_who_has incorrect" severity failure;
    assert entry_for_who_has.mac = x"010203040506"  report "T1a: entry_for_who_has.mac incorrect" severity failure;
    assert entry_for_who_has.ip  = x"44871234"      report "T1a: entry_for_who_has.ip incorrect" severity failure;
    assert got_I_have = '1'             report "T1a: got_I_have incorrect" severity failure;
    assert entry_for_I_have.mac = x"010203040506"   report "T1a: entry_for_I_have.mac incorrect" severity failure;
    assert entry_for_I_have.ip  = x"44871234"       report "T1a: entry_for_I_have.ip incorrect" severity failure;
    wait for clk_period;
    assert recv_who_has = '0'           report "T1b: recv_who_has incorrect" severity failure;
    assert recv_I_have = '0'            report "T1b: recv_I_have incorrect" severity failure;  
    assert req_count = x"01"            report "T1b: req_count incorrect" severity failure;
    wait for clk_period*5;


    --
    --  ------------
    --  -- TEST 2 -- 2nd pkt - send I Have
    --  ------------

    report "T2: basic functional rx test - say I have 193.169.55.66";
    test <= T2;
    clear_state <= '1';
    wait for clk_period;
    clear_state <= '0';
    assert got_who_has = '0'            report "T2-: got_who_has incorrect" severity failure;
    assert got_I_have = '0'             report "T2-: got_I_have incorrect" severity failure;  
    data_in.tdata <= x"ffffffffffff3142";  -- target mac = ???, src mac = 3142 ... 
    data_in.tvalid <= '1';
    wait for clk_period;
    data_in.tdata <= x"7683920208060001";  -- src mac = ...76839202, prot values
    wait for clk_period;
    data_in.tdata <= x"0800060400023142";  -- prot values, reply, SHA = 3142 ...
    wait for clk_period;
    data_in.tdata <= x"76839202C1A95566";  -- SHA = ...76839202, SPA = C1A95566
    wait for clk_period;
    data_in.tdata <= x"261537045869C0A8";  -- THA = ???, TPA = ???? ... 
    wait for clk_period;
    data_in.tdata <= x"0405000000000000";  -- TPA = ... 0405
    data_in.tlast <= '1';
    data_in.tkeep <= "11000000";     -- 2 bytes valid in last word 
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;  
    wait for clk_period;
    assert got_who_has = '0'            report "T2a: got_who_has incorrect" severity failure;
    assert got_I_have = '1'             report "T2a: got_I_have incorrect" severity failure;
    assert entry_for_I_have.mac = x"314276839202"   report "T2a: entry_for_I_have.mac incorrect" severity failure;
    assert entry_for_I_have.ip  = x"C1A95566"       report "T2a: entry_for_I_have.ip incorrect" severity failure;
    wait for clk_period;
    data_in <= empty_axi4_dvlk64;
    assert recv_who_has = '0'           report "T2b: recv_who_has incorrect" severity failure;
    assert recv_I_have = '0'            report "T2b: recv_I_have incorrect" severity failure;  
    assert req_count = x"02"            report "T2b: req_count incorrect" severity failure;
    wait for clk_period*5;

    test <= DONE;
    report "--- end of tests ---";

    wait;
end process;

END;
