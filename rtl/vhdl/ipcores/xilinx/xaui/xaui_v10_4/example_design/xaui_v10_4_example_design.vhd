-------------------------------------------------------------------------------
-- Title      : Example Design level wrapper
-- Project    : XAUI
-------------------------------------------------------------------------------
-- File       : xaui_v10_4_example_design.vhd
-------------------------------------------------------------------------------
-- Description: This file is a wrapper for the XAUI core; it contains all of
-- the clock management logic required for implementing the block level
-------------------------------------------------------------------------------

-- (c) Copyright 2002 - 2011 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.

library ieee;
use ieee.std_logic_1164.all;

entity xaui_v10_4_example_design is
    port (
      dclk             : in  std_logic;
      reset            : in  std_logic;
      xgmii_txd        : in  std_logic_vector(63 downto 0);
      xgmii_txc        : in  std_logic_vector(7 downto 0);
      xgmii_rxd        : out std_logic_vector(63 downto 0);
      xgmii_rxc        : out std_logic_vector(7 downto 0);
      clk156_out       : out std_logic;
      refclk_p         : in  std_logic;
      refclk_n         : in  std_logic;
      xaui_tx_l0_p     : out std_logic;
      xaui_tx_l0_n     : out std_logic;
      xaui_tx_l1_p     : out std_logic;
      xaui_tx_l1_n     : out std_logic;
      xaui_tx_l2_p     : out std_logic;
      xaui_tx_l2_n     : out std_logic;
      xaui_tx_l3_p     : out std_logic;
      xaui_tx_l3_n     : out std_logic;
      xaui_rx_l0_p     : in  std_logic;
      xaui_rx_l0_n     : in  std_logic;
      xaui_rx_l1_p     : in  std_logic;
      xaui_rx_l1_n     : in  std_logic;
      xaui_rx_l2_p     : in  std_logic;
      xaui_rx_l2_n     : in  std_logic;
      xaui_rx_l3_p     : in  std_logic;
      xaui_rx_l3_n     : in  std_logic;
      signal_detect    : in  std_logic_vector(3 downto 0);
      align_status     : out std_logic;
      sync_status      : out std_logic_vector(3 downto 0);
      mgt_tx_ready     : out std_logic;
      configuration_vector : in  std_logic_vector(6 downto 0);
      status_vector        : out std_logic_vector(7 downto 0)
);
end xaui_v10_4_example_design;

library ieee;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

architecture wrapper of xaui_v10_4_example_design is

----------------------------------------------------------------------------
-- Component Declaration for the XAUI block level.
----------------------------------------------------------------------------

 component xaui_v10_4_block is
    generic (
      WRAPPER_SIM_GTXRESET_SPEEDUP : integer := 0
      );
    port (
      dclk             : in  std_logic;
      clk156           : in  std_logic;
      refclk           : in  std_logic;
      reset            : in  std_logic;
      reset156         : in  std_logic;
      txoutclk         : out std_logic;
      xgmii_txd        : in  std_logic_vector(63 downto 0);
      xgmii_txc        : in  std_logic_vector(7 downto 0);
      xgmii_rxd        : out std_logic_vector(63 downto 0);
      xgmii_rxc        : out std_logic_vector(7 downto 0);
      xaui_tx_l0_p     : out std_logic;
      xaui_tx_l0_n     : out std_logic;
      xaui_tx_l1_p     : out std_logic;
      xaui_tx_l1_n     : out std_logic;
      xaui_tx_l2_p     : out std_logic;
      xaui_tx_l2_n     : out std_logic;
      xaui_tx_l3_p     : out std_logic;
      xaui_tx_l3_n     : out std_logic;
      xaui_rx_l0_p     : in  std_logic;
      xaui_rx_l0_n     : in  std_logic;
      xaui_rx_l1_p     : in  std_logic;
      xaui_rx_l1_n     : in  std_logic;
      xaui_rx_l2_p     : in  std_logic;
      xaui_rx_l2_n     : in  std_logic;
      xaui_rx_l3_p     : in  std_logic;
      xaui_rx_l3_n     : in  std_logic;
      txlock           : out std_logic;
      signal_detect    : in  std_logic_vector(3 downto 0);
      align_status     : out std_logic;
      sync_status      : out std_logic_vector(3 downto 0);
      drp_addr         : in  std_logic_vector(7 downto 0);
      drp_en           : in  std_logic_vector(3 downto 0);
      drp_i            : in  std_logic_vector(15 downto 0);
      drp_o            : out std_logic_vector(63 downto 0);
      drp_rdy          : out std_logic_vector(3 downto 0);
      drp_we           : in  std_logic_vector(3 downto 0);
      mgt_tx_ready     : out std_logic;
      configuration_vector : in  std_logic_vector(6 downto 0);
      status_vector        : out std_logic_vector(7 downto 0)
);
end component;

----------------------------------------------------------------------------
-- Signal declarations.
----------------------------------------------------------------------------
  signal txoutclk          : std_logic;
  signal clkfbout_txoutclk     : std_logic;
  signal clkfbin_txoutclk      : std_logic;
  signal clk156              : std_logic;
  signal clkout0             : std_logic;
  signal refclk              : std_logic;
  signal xgmii_txd_int       : std_logic_vector(63 downto 0) := (others => '0');
  signal xgmii_txc_int       : std_logic_vector(7 downto 0)  := (others => '0');
  signal xgmii_rxd_int       : std_logic_vector(63 downto 0) := (others => '0');
  signal xgmii_rxc_int       : std_logic_vector(7 downto 0)  := (others => '0');
  signal reset_156_r1       : std_logic;
  signal reset_156_r2       : std_logic;
  signal reset_156          : std_logic;
  signal txlock             : std_logic;

  attribute ASYNC_REG : string;
  attribute ASYNC_REG of reset_156_r1    : signal is "TRUE";

begin

  xaui_block : xaui_v10_4_block
    generic map (
      WRAPPER_SIM_GTXRESET_SPEEDUP => 1 --Does not affect hardware
      )
    port map (
      reset156         => reset_156,
      reset            => reset,
      dclk             => dclk,
      clk156           => clk156,
      refclk           => refclk,
      txoutclk         => txoutclk,
      xgmii_txd        => xgmii_txd_int,
      xgmii_txc        => xgmii_txc_int,
      xgmii_rxd        => xgmii_rxd_int,
      xgmii_rxc        => xgmii_rxc_int,
      xaui_tx_l0_p     => xaui_tx_l0_p,
      xaui_tx_l0_n     => xaui_tx_l0_n,
      xaui_tx_l1_p     => xaui_tx_l1_p,
      xaui_tx_l1_n     => xaui_tx_l1_n,
      xaui_tx_l2_p     => xaui_tx_l2_p,
      xaui_tx_l2_n     => xaui_tx_l2_n,
      xaui_tx_l3_p     => xaui_tx_l3_p,
      xaui_tx_l3_n     => xaui_tx_l3_n,
      xaui_rx_l0_p     => xaui_rx_l0_p,
      xaui_rx_l0_n     => xaui_rx_l0_n,
      xaui_rx_l1_p     => xaui_rx_l1_p,
      xaui_rx_l1_n     => xaui_rx_l1_n,
      xaui_rx_l2_p     => xaui_rx_l2_p,
      xaui_rx_l2_n     => xaui_rx_l2_n,
      xaui_rx_l3_p     => xaui_rx_l3_p,
      xaui_rx_l3_n     => xaui_rx_l3_n,
      txlock           => txlock,
      signal_detect    => signal_detect,
      align_status     => align_status,
      sync_status      => sync_status,
      drp_addr         => (others => '0'),
      drp_en           => (others => '0'),
      drp_i            => (others => '0'),
      drp_o            => open,
      drp_rdy          => open,
      drp_we           => (others => '0'),
      mgt_tx_ready     => mgt_tx_ready,
      configuration_vector => configuration_vector,
      status_vector        => status_vector);

-----------------------------------------------------------------------------------------------------------------------
-- Clock management logic

  -- Differential Clock Module
  refclk_ibufds : IBUFDS_GTXE1
    port map (
      I     => refclk_p,
      IB    => refclk_n,
      O     => refclk,
      CEB   => '0',
      ODIV2 => open );

   mmcm_txoutclk : MMCM_BASE
  generic map (
    BANDWIDTH            => "HIGH",
    CLKFBOUT_MULT_F      => 6.000,
    CLKFBOUT_PHASE       => 0.000,
    CLKIN1_PERIOD        => 6.400,
    CLKOUT0_DIVIDE_F     => 6.000,
    CLKOUT0_DUTY_CYCLE   => 0.5,
    CLKOUT0_PHASE        => 0.000,
    CLKOUT4_CASCADE      => FALSE,
    CLOCK_HOLD           => FALSE,
    DIVCLK_DIVIDE        => 1,
    REF_JITTER1          => 0.010,
    STARTUP_WAIT         => FALSE )
  port map (
     CLKFBOUT    => clkfbout_txoutclk,
     CLKFBOUTB   => open,
     CLKOUT0     => clkout0,
     LOCKED      => open,
     CLKFBIN     => clkfbin_txoutclk,
     CLKIN1      => txoutclk,
     PWRDWN      => '0',
     RST         => reset
  );

  -- Feedback clock buffer
  txoutclk_fb_buf : BUFG
  port map
   (O => clkfbin_txoutclk,
    I => clkfbout_txoutclk);

  -- Use the feedback clock for main system clock
  clk156 <= clkfbin_txoutclk;


  p_reset : process (clk156, reset)
  begin
    if reset = '1' then
        reset_156_r1 <= '1';
        reset_156_r2 <= '1';
        reset_156    <= '1';
    elsif rising_edge(clk156) then
        reset_156_r1 <= not txlock;
        reset_156_r2 <= reset_156_r1;
        reset_156    <= reset_156_r2;
    end if;
  end process;

   -- Synthesise input and output registers
  p_xgmii_tx_reg : process (clk156)
  begin
    if rising_edge(clk156) then
      xgmii_txd_int <= xgmii_txd;
      xgmii_txc_int <= xgmii_txc;
    end if;
  end process p_xgmii_tx_reg;

  p_xgmii_rx_reg : process (clk156)
  begin
    if rising_edge(clk156) then
      xgmii_rxd <= xgmii_rxd_int;
      xgmii_rxc <= xgmii_rxc_int;
    end if;
  end process p_xgmii_rx_reg;

clk156_out_ddr : ODDR
    port map (
      Q =>  clk156_out,
      D1 => '0',
      D2 => '1',
      C  => clk156,
      CE => '1',
      R  => '0',
      S  => '0');

end wrapper;
