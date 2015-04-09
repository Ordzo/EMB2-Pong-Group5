----------------------------------------------------------------------------------
-- Company: 		University of Southern Denmark
-- Engineer: 		Thor Stærk Stenvang
-- 
-- Create Date:    10:48:34 03/05/2015 
-- Design Name: 
-- Module Name:    ADC_AD9215_handler - Behavioral 
-- Project Name: 	 EMB3 Pong power player project
-- Target Devices: Spartan 6
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

entity ADC_AD9215_handler is
	 GENERIC( Input_clk_freq_MHZ: INTEGER := 200
	 );
    Port ( clk_i : in  STD_LOGIC;
           adc_value_i : in  STD_LOGIC_VECTOR (9 downto 0);
           adc_value_o : out  STD_LOGIC_VECTOR (9 downto 0);
			  clk_o : out  STD_LOGIC);
end ADC_AD9215_handler;

architecture Behavioral of ADC_AD9215_handler is

-- AD9215 timming:
-- Analog signal:
--           000X0               0000X               00000
--         00   | 00           00    |00           X0     X0
--        0     |   0         X      |  0         0|      | 0
--      0X      |    00     00|      |   00     00 |      |  00
--  0000 |      |      X0000  |      |     0X000   |      |    00
--       |N     |N+1   |N+2   |N+3   |N+4   |N+5   |N+6   |
-- Clock:
-- ---|__|---|__|---|__|---|__|---|__|---|__|---|__|---|__|---|__|
-- Data out:
-- -\/-----\/-----\/-----\/-----\/-----\/-----\/-----\/-----\/--
-- _/\_N-6_/\_N-5_/\_N-4_/\_N-3_/\_N-2_/\_N-1_/\__N__/\_N+1_/\__
--
--       |-------------5 cycles---------------| <- Pipeline delay
--                                                 |-| <- t_{od} = 2.0ns MIN
--																						 6.0ns MAX
--       |------| <- clock period: 9.5ns MIN
--       MAX: FREQ:  105

BEGIN
-- Sample input from ADC
ADC_SAMPLER: PROCESS(clk_i)
BEGIN
	IF RISING_EDGE(clk_i) THEN
		adc_value_o <= adc_value_i;
	END IF;
END PROCESS;


 -- ADC ouput clock:
 ODDR2_clk : ODDR2
		generic map(
			DDR_ALIGNMENT 	=> "NONE", 	-- Sets output alignment to "NONE", "C0", "C1" 
			INIT 				=> '0', 		-- Sets initial state of the Q output to '0' or '1'
			SRTYPE 			=> "SYNC" 	-- Specifies "SYNC" or "ASYNC" set/reset
			)
		port map (
			Q  => clk_o,  			-- 1-bit output data
			C0 => clk_i, 		-- 1-bit clock input
			C1 => not(clk_i), 	-- 1-bit clock input
			CE => '1',  			-- 1-bit clock enable input
			D0 => '1',   			-- 1-bit data input (associated with C0)
			D1 => '0',   			-- 1-bit data input (associated with C1)
			R  => '0',    			-- 1-bit reset input
			S  => '0'     			-- 1-bit set input
		);


end Behavioral;

