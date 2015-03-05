----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:00 02/26/2015 
-- Design Name: 
-- Module Name:    graphics_controller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity graphics_controller is
    Port ( clk_200M_i 		: in  STD_LOGIC;
			  reset				: in 	STD_LOGIC;
				
			  -- VGA outputs
			  j8_vga_hsync_o	: out	STD_LOGIC;
			  j8_vga_vsync_o	: out STD_LOGIC;
			  
			  j8_vga_red_o		: out STD_LOGIC_VECTOR(2 downto 0);
			  j8_vga_blue_o	: out STD_LOGIC_VECTOR(2 downto 0);
			  j8_vga_green_o	: out STD_LOGIC_VECTOR(2 downto 0);
			  
			  led_o				: buffer STD_LOGIC
			);
end graphics_controller;

architecture Behavioral of graphics_controller is

-- VGA generator to generate a signal and display it
--component vga_generator
--	generic (
--				G_COLOR_WIDTH :	integer
--			);
--	port (  clk_i 		: in  STD_LOGIC;
--           reset 		: in  STD_LOGIC;
--           h_sync 	: buffer  STD_LOGIC;
--           h_active 	: out  STD_LOGIC;
--           v_sync 	: buffer  STD_LOGIC;
--           v_active 	: out  STD_LOGIC;
--			  -- Further addons for adjusting image
--			  
--			  r_o			: out		STD_LOGIC_VECTOR(G_COLOR_WIDTH-1 downto 0);
--			  g_o			: out		STD_LOGIC_VECTOR(G_COLOR_WIDTH-1 downto 0);
--			  b_o			: out  	STD_LOGIC_VECTOR(G_COLOR_WIDTH-1 downto 0)
--			);
--end component;


component alive_led
	generic (
				LED_DELAY : integer
				);
	port		(
				clk_i  	: in STD_LOGIC;
				reset		: in STD_LOGIC;
				
				led_o		: buffer STD_LOGIC
				);
end component;

begin 	

alive_led_inst : alive_led
	generic map (
				LED_DELAY => 100000000
				)
	port map (
				clk_i 	=> clk_200M_i,
				reset		=> reset,
				
				led_o		=> led_o
				);

vga_generator_inst: entity work.vga_generator
	generic map(
				 G_COLOR_WIDTH => 3
				)
	port map( clk_i 	=> clk_200M_i,
				 reset	=> reset,
				 
				 h_sync 	=> j8_vga_hsync_o,
				 v_sync  => j8_vga_vsync_o,
				 
				 r_o 		=> j8_vga_red_o,
				 g_o 		=> j8_vga_green_o,
				 b_o 		=> j8_vga_blue_o
				);


end Behavioral;

