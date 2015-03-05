----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:54:16 03/01/2015 
-- Design Name: 
-- Module Name:    Bat_Finder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bat_Finder is
    Port ( pixel_clk_i 			: in  	STD_LOGIC;
           pixel_clk_o 			: out  	STD_LOGIC;
           Hsync_i 	  			: in  	STD_LOGIC;
           Hsync_o 				: out  	STD_LOGIC;
           Vsync_i 				: in  	STD_LOGIC;
           Vsync_o 				: out  	STD_LOGIC;
           R_i 					: in  	STD_LOGIC_VECTOR (9 downto 0);
           R_o 					: out  	STD_LOGIC_VECTOR (9 downto 0);
           G_i 					: in  	STD_LOGIC_VECTOR (9 downto 0);
           G_o 					: out  	STD_LOGIC_VECTOR (9 downto 0);
           B_i 					: in  	STD_LOGIC_VECTOR (9 downto 0);
           B_o 					: out  	STD_LOGIC_VECTOR (9 downto 0);
           left_vert_pos_o 	: out  	integer range 0 to 512;
           left_dy_o 			: out  	integer range 0 to 512;
           right_vert_pos_o	: out  	integer range 0 to 512;
           right_dy_o 			: out  	integer range 0 to 512;
           ball_vert_pos_o 	: out  	integer range 0 to 512;
           ball_horz_pos_o 	: out  	integer range 0 to 1024;
           ball_dx_o 			: out 	integer range 0 to 1024;
           ball_dy_o 			: out  	integer range 0 to 512);
end Bat_Finder;

architecture Behavioral of Bat_Finder is
	signal horz_count 		: integer range 0 to 1024 	:= 0;
	signal vert_count 		: integer range 0 to 512 	:= 0;
	signal left_vert_old		: integer range 0 to 512 	:= 0;
	signal left_vert			: integer range 0 to 512   := 0;
	signal right_vert_old	: integer range 0 to 512   := 0;
	signal right_vert			: integer range 0 to 512   := 0;
	signal ball_vert_old 	: integer range 0 to 512	:= 0;
	signal ball_vert			: integer range 0 to 512   := 0;
	signal ball_horz_old		: integer range 0 to 1024  := 0;
	signal ball_horz			: integer range 0 to 1024  := 0;
begin
	
	
	
	
	-- Assign output signals
	-- Positions
	left_vert_pos_o 	<= left_vert;
	right_vert_pos_o 	<= right_vert;
	ball_vert_pos_o 	<= ball_vert;
	ball_horz_pos_o 	<= ball_horz;
	
	-- Velocities
	left_dy_o	<= left_vert - left_vert_old; 
	right_dy_o	<= right_vert - right_vert_old; 
	ball_dx_o	<= ball_horz - ball_horz_old;
	ball_dy_o	<= ball_vert - ball_vert_old;
end Behavioral;

