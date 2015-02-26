--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:51:49 02/06/2012
-- Design Name:   
-- Module Name:   C:/Users/anlan/Documents/PhD/Undervisning/Lecture 3/Exercise/GenericSlidingAverage/testbench.vhd
-- Project Name:  SlidingAverage
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sliding_average
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sliding_average
    PORT(
         clk_i : IN  std_logic;
         reset_i : IN  std_logic;
         adc_i : IN  std_logic_vector(9 downto 0);
         dac_o : OUT  std_logic_vector(9 downto 0);
         adc_clk_o : OUT  std_logic;
         dac_clk_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal reset_i : std_logic := '0';
   signal adc_i : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal dac_o : std_logic_vector(9 downto 0);
   signal adc_clk_o : std_logic;
   signal dac_clk_o : std_logic;

   -- Clock period definitions
   constant clk_i_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sliding_average PORT MAP (
          clk_i => clk_i,
          reset_i => reset_i,
          adc_i => adc_i,
          dac_o => dac_o,
          adc_clk_o => adc_clk_o,
          dac_clk_o => dac_clk_o
        );

   -- Clock process definitions
   clk_i_process :process
   begin
		clk_i <= '0';
		wait for clk_i_period/2;
		clk_i <= '1';
		wait for clk_i_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset_i <= '1';
      wait for 100 ns;	
	
      wait for clk_i_period*10;

      -- insert stimulus here 
		reset_i <= '0';
		adc_i <= std_logic_vector(TO_UNSIGNED(1,10));	--
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(2,10));
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(3,10));
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(4,10));
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(5,10));
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(6,10));
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(7,10));
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(8,10));
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(9,10));
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(10,10));
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(11,10));
		wait for clk_i_period;
		adc_i <= std_logic_vector(TO_UNSIGNED(0,10));
		
      wait;
   end process;

END;
