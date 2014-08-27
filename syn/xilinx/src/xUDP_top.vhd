library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.Vcomponents.ALL;

ENTITY xUDP is 
	port(
			BRD_RESET_SW            : in  std_logic;
			BRD_CLK_P, BRD_CLK_N    : in  std_logic;
			FPGA_LED						: out std_logic_vector(3 downto 0);
			FPGA_PROG_B					: inout std_logic;
			DIP_GPIO						: in std_logic_vector(7 downto 0);
		
			MDIO_PAD						: inout std_logic;
			MDC							: out std_logic;
			PHY_RSTN						: out std_logic;
			PHY_LASI, PHY_INTA		: in std_logic;
			PHY10G_RCK_P 				: in std_logic;
			PHY10G_RCK_N 				: in std_logic;
			--GTX I/Os for 10G External PHY
			FXTX_P 						: out std_logic_vector(3 downto 0);
			FXTX_N 						: out std_logic_vector(3 downto 0);
			FXRX_P 						: out std_logic_vector(3 downto 0);
			FXRX_N 						: out std_logic_vector(3 downto 0)
		);
		
end xUDP;

ARCHITECTURE Structural of xUDP is

--clocks
signal phy10g_refclk : std_logic;
signal clk100	 		: std_logic;
signal clk156			: std_logic;

--mdio
signal mdio_i			: std_logic;
signal mdio_o			: std_logic;
signal mdio_t			: std_logic;

BEGIN


-- Clock management logic
brdclk_ibufds : IBUFDS
	port map (	I => BRD_CLK_P,
					IB => BRD_CLK_N,
					O => clk100 );

phy10g_refclk_ibufds : IBUFDS_GTXE1
	port map (	I     => PHY10G_RCK_P,
					IB    => PHY10G_RCK_N,
					O     => phy10g_refclk,
					CEB   => '0',
					ODIV2 => open );
					
--Some IO Buffer
fpga_prog_b_iobuf : IOBUF
   generic map ( DRIVE => 12, SLEW => "SLOW")
   port map (	O => open,    
					IO => FPGA_PROG_B,   
					I => '0',
					T => '1' );
mdio_iobuf : IOBUF
   generic map ( DRIVE => 12, SLEW => "SLOW")
   port map ( 	O => mdio_i,    
					IO => MDIO_PAD,   
					I => mdio_o,
					T => mdio_t );

--some temporary assignment
mdio_i <= '0';
mdio_o <= '1';
mdio_t <= '0';					

END Structural;