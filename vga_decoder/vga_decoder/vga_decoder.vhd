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
	GENERIC(
				vga_in_color_width: INTEGER := 10
	);
	Port (
				clk : in  STD_LOGIC;
				hs_i: in  STD_LOGIC;
				vs_i: in  STD_LOGIC;
				r_i : in  STD_LOGIC_VECTOR(vga_in_color_width-1 downto 0);
				g_i : in  STD_LOGIC_VECTOR(vga_in_color_width-1 downto 0);
				b_i : in  STD_LOGIC_VECTOR(vga_in_color_width-1 downto 0)
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
-- ########################################
begin


end Behavioral;

