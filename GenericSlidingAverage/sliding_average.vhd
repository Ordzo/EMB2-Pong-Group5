----------------------------------------------------------------------------------
-- Company: University Of Southern Denmark
-- Engineer: Anders Blaabjerg Lange
-- 
-- Create Date:    11:10:00 06/02/2012 
-- Design Name: 
-- Module Name:    sliding-average - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sliding_average is
	port (	
		clk_i 		: in	std_logic;
		reset_i		: in	std_logic;
		adc_i			: in	std_logic_vector(9 downto 0);
		dac_o			: out	std_logic_vector(9 downto 0);
		adc_clk_o	: out	std_logic;
		dac_clk_o	: out	std_logic		
		);
end sliding_average;

architecture Behavioral of sliding_average is

	----------------------------------------------------------------
	-- constant declarations
	----------------------------------------------------------------
		constant C_DATA_CNT 	: integer := 11;
	----------------------------------------------------------------
	
	----------------------------------------------------------------
	-- type declarations
	----------------------------------------------------------------
		type slav_array_type is array(integer range <>) of unsigned(9 downto 0);
	----------------------------------------------------------------
	
	----------------------------------------------------------------
	-- signal declarations
	----------------------------------------------------------------
		signal slav_delay					: slav_array_type(0 to C_DATA_CNT-1) := (others=>(others=>'0'));
		signal sum_sig 					: unsigned(15 downto 0 );
		signal division_dividend		: unsigned(15 downto 0);
		signal division_quotient		: unsigned(15 downto 0);
		signal division_quotient_slv	: std_logic_vector(15 downto 0);
		signal index_sig					: integer range 0 to (C_DATA_CNT - 1) := 0;
	----------------------------------------------------------------
	
	----------------------------------------------------------------
	-- component declarations
	----------------------------------------------------------------
		component divider
			port (
			clk: in std_logic;
			rfd: out std_logic;
			dividend: in std_logic_vector(15 downto 0);
			divisor: in std_logic_vector(4 downto 0);
			quotient: out std_logic_vector(15 downto 0);
			fractional: out std_logic_vector(4 downto 0));
		end component;
	----------------------------------------------------------------
	
begin

	----------------------------------------------------------------
	-- Clock outputs for ADC and DAC
	----------------------------------------------------------------
		adc_clk_o <= clk_i;
		dac_clk_o <= clk_i;
	----------------------------------------------------------------
	
	----------------------------------------------------------------
	-- Divider core
	----------------------------------------------------------------	
		divider_inst : divider
		port map (
			clk 			=> clk_i,
			rfd 			=> open,
			dividend 	=> std_logic_vector(division_dividend),
			divisor 		=> std_logic_vector(to_unsigned(C_DATA_CNT,5)),
			quotient 	=> division_quotient_slv,
			fractional 	=> open
			);		
		
		division_quotient <= unsigned(division_quotient_slv);
	----------------------------------------------------------------
	
	----------------------------------------------------------------
	-- Sliding Average logic
	----------------------------------------------------------------
		process(clk_i)
			variable sum	: unsigned(15 downto 0) := (others => '0');
			variable index : integer range 0 to (C_DATA_CNT - 1) := 0;
		begin
			if rising_edge(clk_i) then
				if(reset_i = '1') then
					sum_sig <= (others => '0');
					index := 0;
					index_sig <= index;
					sum := (others => '0');
				else
					-- Circular buffer 
--					sum := sum - slav_delay(index);
--					slav_delay(index) <= unsigned(adc_i);
--					sum := sum + unsigned(adc_i);
--					index := index + 1;
--					IF index = C_DATA_CNT THEN
--						index := 0;
--					END IF;
--					index_sig <= index;
--					
					slav_delay(0) <= unsigned(adc_i);
					sum := sum_sig + resize(unsigned(adc_i), 16);
					sum := sum - resize(slav_delay(C_DATA_CNT - 1), 16);
					
					for i in 1 to C_DATA_CNT-1 loop				
						slav_delay(i) <= slav_delay(i-1);
--						sum := sum + resize(slav_delay(i),14);
					end loop;
					sum_sig <= sum;
															
					dac_o <= std_logic_vector(resize(division_quotient, 10));
				end if;
			end if;
		end process;
		
		division_dividend <= unsigned(sum_sig);
	----------------------------------------------------------------

end Behavioral;

