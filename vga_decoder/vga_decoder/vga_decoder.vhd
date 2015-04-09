----------------------------------------------------------------------------------
-- Company: 		University of Southern Denmark
-- Engineer: 		Thor Stærk Stenvang
-- 
-- Create Date:    11:10:27 03/01/2015 
-- Design Name: 
-- Module Name:    vga_decoder - Behavioral 
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

entity vga_decoder is
	Port (
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
end vga_decoder;

architecture Behavioral of vga_decoder is
-- ########################################
-- #	VGA 640x480 Industry Standard 60Hz
-- #
-- #  General:
-- #	Field freq:	59.94  Hz 
-- #  Clock freq:	25.175 Mhz
-- #  Line freq:  31469  Hz
-- #
-- #	One line:
-- #	8   pixels front porch      0.318 us
-- # 	96  pixels horizontal sync  3.813 us
-- #  40  pixels back porch       1.589 us
-- #	8   pixels left border      0.318 us
-- #  640 pixels video            25.42 us
-- #  8   pixels right border     0.318 us
-- #  -----------------------
-- #  800 pixels total per line   31.78 us
-- #
-- #  One field:
-- #	2   lines front porch      0.0636 ms 
-- # 	2 	 lines vertical sync    0.0636 ms
-- #  25  lines back porch       0.7945 ms
-- #	8   lines top border			0.2542 ms
-- #  480 lines video				15.253 ms
-- #  8   lines bottom border    0.2542 ms
-- #  -----------------------
-- #  525 lines total per field  16.683 ms
-- #
-- #  sync polarity: H negative 
-- #                 V negative
-- #  scan type: non interlaced
-- #
-- # hsync: _____      ____________________
-- # pixels      |____|
-- #        |-----------------800---------|
-- #        |-16-|    |-48-|
-- #             |-96-|    |--Display:640-|
-- # vsync: _____      ____________________
-- # lines       |____|
-- #        |-----------------525---------|
-- #        |-10-|    |-33-|
-- #             |-02-|    |--Display:480-|
-- ########################################

    COMPONENT ADC_AD9215_handler
    PORT(
         clk_i : IN  std_logic;
         adc_value_i : IN  std_logic_vector(9 downto 0);
         adc_value_o : OUT  std_logic_vector(9 downto 0);
			clk_o : OUT STD_LOGIC
        );
    END COMPONENT;	 
	 
	 signal r_adc_value_o : std_logic_vector(9 downto 0);
	 signal g_adc_value_o : std_logic_vector(9 downto 0);
	 signal b_adc_value_o : std_logic_vector(9 downto 0);
	 
	 SIGNAL horizontal_count: UNSIGNED(9 downto 0) := (others => '0');
	 SIGNAL vertical_count: UNSIGNED(9 downto 0) := (others => '0');
	 
begin
	
	 -- ADC modules:
    R_ADC: ADC_AD9215_handler 
		PORT MAP (
          clk_i => clk_100M7_i,           -- 1-bit  input: clock
          adc_value_i => r_i,           -- 10-bit input: input from adc
          adc_value_o => r_adc_value_o, -- 10-bit output: sampled adc value
			 clk_o => r_adc_clk_o			 -- 1-bit  output: ADC clock
      );
		
	 G_ADC: ADC_AD9215_handler 
		PORT MAP (
          clk_i => clk_100M7_i,           -- 1-bit  input: clock
          adc_value_i => g_i,           -- 10-bit input: input from adc
          adc_value_o => g_adc_value_o, -- 10-bit output: sampled adc value
			 clk_o => g_adc_clk_o			 -- 1-bit  output: ADC clock
      );
		
	 B_ADC: ADC_AD9215_handler 
		PORT MAP (
          clk_i => clk_100M7_i,           -- 1-bit  input: clock
          adc_value_i => b_i,           -- 10-bit input: input from adc
          adc_value_o => b_adc_value_o, -- 10-bit output: sampled adc value
			 clk_o => b_adc_clk_o			 -- 1-bit  output: ADC clock
      );
	 
	 
	 -- Sample input
	 sample_pixels: PROCESS(clk_25M175_i)
		VARIABLE pre_hs_i: std_logic := '1';
		VARIABLE pre_vs_i: std_logic := '1';
	 BEGIN
		IF RISING_EDGE(clk_25M175_i) THEN
			-- Sample pixels
			r_o <= r_adc_value_o;
			g_o <= g_adc_value_o;
			b_o <= b_adc_value_o;
			
			-- horizontal count
			horizontal_count <=  horizontal_count + 1;
			
			-- Check if rising edge on hs_i
			-- Line freq:  31469  Hz
			IF(hs_i = '1' and pre_hs_i = '0') THEN
				-- Reset horizontal count
				horizontal_count <= (others => '0');
				-- vertical count
				vertical_count <= vertical_count +1;
			END IF;
			pre_hs_i := hs_i;
			
			-- Check if rising edge on vs_i
			-- Field freq:	59.94  Hz
			IF(vs_i = '1' and pre_vs_i = '0') THEN
				-- Reset vertical count
				vertical_count <= (others => '0');
			END IF;
			pre_vs_i := vs_i;
			
		END IF;
	 END PROCESS;
	 
	 --output_pixel_position
	 h_pixel_pos_o <= std_logic_vector(horizontal_count - (48+2)) when (horizontal_count - (48+2)) < 640 else 
	                  std_logic_vector(to_unsigned(639,h_pixel_pos_o'length)); --Output in the range 0-639
	 v_pixel_pos_o <= std_logic_vector(vertical_count - 33) when (vertical_count - 33) < 480 else 
	                  std_logic_vector(to_unsigned(479,v_pixel_pos_o'length)); --Output in the range 0-479

end Behavioral;

