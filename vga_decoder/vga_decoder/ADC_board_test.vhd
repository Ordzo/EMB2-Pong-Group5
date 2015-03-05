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
         rst_i : IN  std_logic;
         adc_value_i : IN  std_logic_vector(9 downto 0);
         clk_adc_o : OUT  std_logic;
         adc_value_o : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
	 
	 signal adc_value_o : std_logic_vector(9 downto 0);

begin

	RED_ADC: ADC_AD9215_handler PORT MAP (
          clk_i => clk_200M_i,
          rst_i => '1',
          adc_value_i => fx2_vga_red_i,
          clk_adc_o => fx2_vga_red_clk_o,
          adc_value_o => adc_value_o
        );


led_o(0) <= fx2_vga_hsync_i;
led_o(1) <= fx2_vga_vsync_i;

led_o(2 to 6) <= adc_value_o(9 downto 5);


end Behavioral;

