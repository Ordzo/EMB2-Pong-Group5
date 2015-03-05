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

entity ADC_AD9215_handler is
	 GENERIC( Input_clk_freq_MHZ: INTEGER := 200
	 );
    Port ( clk_i : in  STD_LOGIC;
			  rst_i : in  STD_LOGIC;
           adc_value_i : in  STD_LOGIC_VECTOR (9 downto 0);
           clk_adc_o : out  STD_LOGIC;
           adc_value_o : out  STD_LOGIC_VECTOR (9 downto 0));
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
--       |-------------6 cycles---------------| <- Pipeline delay
--                                                 |-| <- t_{od} = 2.0ns MIN
--																						 6.0ns MAX
--       |------| <- clock period: 9.5ns MIN

-- Clock divider signals
CONSTANT clk_division: INTEGER := 100;
SIGNAL adc_clk: STD_LOGIC := '1';

begin

-- Clock divider
adc_clock_generator: PROCESS(clk_i,rst_i)
	Variable clk_count: INTEGER RANGE 0 to clk_division;
BEGIN
	IF RISING_EDGE(clk_i) THEN
		IF rst_i = '0' THEN
			clk_count := 0;		-- Syncrounous reset
		ELSE
			IF(clk_count = clk_division)THEN
				adc_clk <= NOT(adc_clk);	-- Reverse signal
				clk_count := 0;				-- Reset clk counter
			ELSE
				clk_count := clk_count+1;	-- Count clk counter up
			END IF;
		END IF;
	END IF;	
END PROCESS;

-- ADC clock output
clk_adc_o <= adc_clk;

-- Sample input from ADC
ADC_SAMPLER: PROCESS(adc_clk)
BEGIN
	IF RISING_EDGE(adc_clk) THEN
		adc_value_o <= adc_value_i;
	END IF;
END PROCESS;


end Behavioral;

