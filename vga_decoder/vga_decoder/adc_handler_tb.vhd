--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:15:22 03/05/2015
-- Design Name:   
-- Module Name:   C:/Xpro_v14/8_semester/vga_decoder/vga_decoder/adc_handler_tb.vhd
-- Project Name:  vga_decoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADC_AD9215_handler
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY adc_handler_tb IS
END adc_handler_tb;
 
ARCHITECTURE behavior OF adc_handler_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADC_AD9215_handler
    PORT(
         clk_i : IN  std_logic;
         rst_i : IN  std_logic;
         adc_value_i : IN  std_logic_vector(9 downto 0);
         clk_adc_o : OUT  std_logic;
         adc_value_o : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal rst_i : std_logic := '1';
   signal adc_value_i : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal clk_adc_o : std_logic;
   signal adc_value_o : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
   constant clk_adc_o_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADC_AD9215_handler PORT MAP (
          clk_i => clk_i,
          rst_i => rst_i,
          adc_value_i => adc_value_i,
          clk_adc_o => clk_adc_o,
          adc_value_o => adc_value_o
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
      wait for 100 ns;	

      wait for clk_i_period*10;

      -- insert stimulus here

		wait for 2000 ns;
		adc_value_i <= "0101010101";
		wait for 2000 ns;
		adc_value_i <= "1111111111";

      wait;
   end process;

END;
