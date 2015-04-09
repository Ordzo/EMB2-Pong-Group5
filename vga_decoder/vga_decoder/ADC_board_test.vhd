----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:53 03/05/2015 
-- Design Name: 
-- Module Name:    ADC_board_test - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

Library UNISIM;
use UNISIM.vcomponents.all;

entity ADC_board_test is
    Port (clk_200M_i : in  STD_LOGIC;
	       fx2_vga_hsync_i : in STD_LOGIC;
			 fx2_vga_vsync_i : in STD_LOGIC;
			 fx2_vga_red_i : in STD_LOGIC_VECTOR(9 downto 0);
			 fx2_vga_red_clk_o : out STD_LOGIC;
			 led_o : out STD_LOGIC_VECTOR(0 to 6)
	 );
end ADC_board_test;

architecture Behavioral of ADC_board_test is

	 COMPONENT ADC_AD9215_handler
    PORT(
         clk_i : IN  std_logic;
         adc_value_i : IN  std_logic_vector(9 downto 0);
         adc_value_o : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
	 
	 signal r_adc_value_o : std_logic_vector(9 downto 0);
	 signal clk_25M175: STD_LOGIC;
	 signal clk_100M7: STD_LOGIC;
	 SIGNAL r_adc_clk: STD_LOGIC;
	 signal resetn	   : std_logic; -- active low reset signal

begin
		-- Generate 25.175 Hz signal to sample vga input!
		-- 200/25.175 = 7.9443892
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
		
		ODDR2_R_clk : ODDR2
			generic map(
				DDR_ALIGNMENT 	=> "NONE", 	-- Sets output alignment to "NONE", "C0", "C1" 
				INIT 				=> '0', 		-- Sets initial state of the Q output to '0' or '1'
				SRTYPE 			=> "SYNC" 	-- Specifies "SYNC" or "ASYNC" set/reset
				)
			port map (
				Q  => r_adc_clk,  -- 1-bit output data
				C0 => clk_100M7, 					-- 1-bit clock input
				C1 => not(clk_100M7), 			-- 1-bit clock input
				CE => '1',  						-- 1-bit clock enable input
				D0 => '1',   						-- 1-bit data input (associated with C0)
				D1 => '0',   						-- 1-bit data input (associated with C1)
				R  => '0',    						-- 1-bit reset input
				S  => '0'     						-- 1-bit set input
			);
		
		R_ADC: ADC_AD9215_handler 
		PORT MAP (
          clk_i => clk_100M7,          -- 1-bit  input: clock
          adc_value_i => fx2_vga_red_i,           -- 10-bit input: input from adc
          adc_value_o => r_adc_value_o  -- 10-bit output: sampled adc value
      );
		
		led_o(0) <= fx2_vga_hsync_i;
		led_o(1) <= fx2_vga_vsync_i;
		led_o(2 to 6) <= r_adc_value_o(4 downto 0);
		fx2_vga_red_clk_o <= r_adc_clk;
		




end Behavioral;

