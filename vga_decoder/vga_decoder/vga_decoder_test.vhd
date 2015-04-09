----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:55:31 03/26/2015 
-- Design Name: 
-- Module Name:    vga_decoder_test - Behavioral 
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
Library UNISIM;
use UNISIM.vcomponents.all;

entity vga_decoder_test is
	Port ( clk_200M_i      : in STD_LOGIC;
	       fx2_vga_hsync_i : in STD_LOGIC;
			 fx2_vga_vsync_i : in STD_LOGIC;
			 fx2_vga_red_i   : in STD_LOGIC_VECTOR(9 downto 0);
			 fx2_vga_green_i : in STD_LOGIC_VECTOR(9 downto 0);
			 fx2_vga_blue_i  : in STD_LOGIC_VECTOR(9 downto 0);
			 fx2_vga_red_clk_o   : out STD_LOGIC;
			 fx2_vga_green_clk_o : out STD_LOGIC;
			 fx2_vga_blue_clk_o  : out STD_LOGIC;
			 led_o : out STD_LOGIC_VECTOR(0 to 6)
	     );
end vga_decoder_test;

architecture Behavioral of vga_decoder_test is

-- COMPONENTS:
COMPONENT vga_decoder
PORT (
		clk_25M175_i: in STD_LOGIC;
		clk_100M7_i: in STD_LOGIC;
		hs_i: in  STD_LOGIC;
		vs_i: in  STD_LOGIC;
		r_i : in  STD_LOGIC_VECTOR(9 downto 0);
		g_i : in  STD_LOGIC_VECTOR(9 downto 0);
		b_i : in  STD_LOGIC_VECTOR(9 downto 0);
		r_o : out  STD_LOGIC_VECTOR(9 downto 0);
		g_o : out  STD_LOGIC_VECTOR(9 downto 0);
		b_o : out  STD_LOGIC_VECTOR(9 downto 0);
		r_adc_clk_o : out STD_LOGIC;
		g_adc_clk_o : out STD_LOGIC;
		b_adc_clk_o : out STD_LOGIC;
		h_pixel_pos_o : out STD_LOGIC_VECTOR(9 downto 0);
		v_pixel_pos_o : out STD_LOGIC_VECTOR(9 downto 0)
	  );
END COMPONENT;

-- SIGNALS:
signal r_adc_value_o : std_logic_vector(9 downto 0);
signal g_adc_value_o : std_logic_vector(9 downto 0);
signal b_adc_value_o : std_logic_vector(9 downto 0);

signal clk_25M175: STD_LOGIC;
signal clk_100M7: STD_LOGIC;
signal resetn	   : std_logic; -- active low reset signal

begin

Decoder_module: vga_decoder 
PORT MAP (
		clk_25M175_i => clk_25M175,			 -- 1-bit input: Input clock
		clk_100M7_i	 => clk_100M7,				 -- 1-bit input: Input clock
		hs_i			 => fx2_vga_hsync_i,		 -- 1-bit input: vga horizontal sync
		vs_i 			 => fx2_vga_vsync_i,		 -- 1-bit input: vertical sync
		r_i 			 => fx2_vga_red_i,       -- 10-bit input: red adc value
		g_i 			 => fx2_vga_green_i,		 -- 10-bit input: green adc value
		b_i 			 => fx2_vga_blue_i,		 -- 10-bit input: blue adc value
		r_o 			 => r_adc_value_o,       -- 10-bit output: sampled red adc value
		g_o 			 => g_adc_value_o,		 -- 10-bit output: sampled green adc value
		b_o 			 => b_adc_value_o,		 -- 10-bit output: sampled blue adc value
		r_adc_clk_o  => fx2_vga_red_clk_o,   -- 1-bit output: red adc clk
		g_adc_clk_o  => fx2_vga_green_clk_o, -- 1-bit output: red adc clk
		b_adc_clk_o  => fx2_vga_blue_clk_o,	 -- 1-bit output: red adc clk
		h_pixel_pos_o  => open,					 -- 10-bit output: sampled blue adc value
		v_pixel_pos_o  => open					 -- 10-bit output: sampled blue adc value
);

		-- Generate 25.175 MHz signal to sample vga input!
		-- Generate 100.7 MHz signal to drive adc!
		-- 200/100.7 ~= 1.986097 ~= 143/72
		-- 200 * 72/143 ~= 100.6993
		-- (200 * 72/143)/4 ~= 25.17483  
		DCM_CLKGEN_inst : DCM_CLKGEN
		generic map (
			CLKFXDV_DIVIDE 	=> 4,       	-- CLKFXDV divide value (2, 4, 8, 16, 32)
			CLKFX_DIVIDE 		=> 143,       	-- Divide value - D - (1-256)
			CLKFX_MD_MAX		=> 0.251748,  	-- Specify maximum M/D ratio for timing anlysis
			CLKFX_MULTIPLY 	=> 72,       	-- Multiply value - M - (2-256)
			CLKIN_PERIOD 		=> 5.0,       	-- Input clock period specified in nS
			SPREAD_SPECTRUM 	=> "NONE", 		-- Spread Spectrum mode "NONE", "CENTER_LOW_SPREAD", "CENTER_HIGH_SPREAD",
														-- "VIDEO_LINK_M0", "VIDEO_LINK_M1" or "VIDEO_LINK_M2" 
			STARTUP_WAIT 		=> FALSE      	-- Delay config DONE until DCM_CLKGEN LOCKED (TRUE/FALSE)
		)
		port map (
			CLKFX 		=> clk_100M7, -- 1-bit output: Generated clock output: CLKIN * CLKFX_MULTIPLY/CLKFX_DIVIDE
			CLKFX180 	=> open,   	   -- 1-bit output: Generated clock output 180 degree out of phase from CLKFX.
			CLKFXDV 		=> clk_25M175,	-- 1-bit output: Divided clock output: CLKFXDV * CLKFX/CLKFXDV_DIVIDE
			LOCKED 		=> resetn,     -- 1-bit output: Locked output
			PROGDONE 	=> open,   		-- 1-bit output: Active high output to indicate the successful re-programming
			STATUS 		=> open,     	-- 2-bit output: DCM_CLKGEN status
			CLKIN 		=> clk_200M_i,	-- 1-bit input: Input clock
			FREEZEDCM 	=> '0', 			-- 1-bit input: Prevents frequency adjustments to input clock
			PROGCLK 		=> '0',    		-- 1-bit input: Clock input for M/D reconfiguration
			PROGDATA 	=> '0',   		-- 1-bit input: Serial data input for M/D reconfiguration
			PROGEN 		=> '0',     	-- 1-bit input: Active high program enable
			RST 			=> '0'         -- 1-bit input: Reset input pin
		);


end Behavioral;

