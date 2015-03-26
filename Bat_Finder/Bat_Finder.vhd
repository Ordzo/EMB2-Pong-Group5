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
USE work.arr_pkg.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bat_Finder is
    Port ( clk_i					: in 		STD_LOGIC;
			  rst					   : in     STD_LOGIC;
			  pixel_x				: in		UNSIGNED(9 downto 0);
			  pixel_y 				: in 		UNSIGNED(9 downto 0);	
           R_i 					: in  	UNSIGNED(9 downto 0);
           G_i 					: in  	UNSIGNED(9 downto 0);
           B_i 					: in  	UNSIGNED(9 downto 0);
           pos_o 					: out  	pos_array;
           ball_vel_o 			: out 	vel_array
			  );
end Bat_Finder;

architecture Behavioral of Bat_Finder is

begin
	process(clk_i)
		variable left_bat_found	: STD_LOGIC := '0';
		variable right_bat_found: STD_LOGIC := '0';
		variable ball_found		: STD_LOGIC := '0';
		-- Initial positions, center of possible positions
		variable left_bat_pos  : unsigned(9 downto 0) := to_unsigned(190, 10);
		variable right_bat_pos : unsigned(9 downto 0) := to_unsigned(190, 10);
		variable ball_x_pos    : unsigned(9 downto 0) := to_unsigned(310, 10);
		variable ball_y_pos 	: unsigned(9 downto 0) := to_unsigned(230, 10);
	
		-- Initial speeds, initialize to zero
		variable left_bat_vel  : signed(9 downto 0) := (others => '0');
		variable right_bat_vel : signed(9 downto 0) := (others => '0');
		variable ball_x_vel    : signed(9 downto 0) := (others => '0');
		variable ball_y_vel    : signed(9 downto 0) := (others => '0');
	begin
		if(rising_edge(clk_i)) then
			if(rst = '1') then
				left_bat_found := '0';
				right_bat_found := '0';
				ball_found := '0';
			else
				-- New frame
				if((pixel_x = 1) AND (pixel_y = 1)) then
					left_bat_found := '0';
					right_bat_found := '0';
					ball_found := '0';
				end if;
				
				if((pixel_x = 20) AND (G_i > 200) AND (left_bat_found = '0')) then
					left_bat_vel := signed(pixel_y) - signed(left_bat_pos);
					left_bat_pos := pixel_y;
					left_bat_found := '1';
				elsif ((pixel_x = 600) AND (B_i > 200) AND (right_bat_found = '0')) then
					right_bat_vel := signed(pixel_y) - signed(right_bat_pos);
					right_bat_pos := pixel_y;
					right_bat_found := '1';
				elsif ((R_i > 200) AND (ball_found = '0')) then
					ball_x_vel := signed(pixel_x) - signed(ball_x_pos);
					ball_y_vel := signed(pixel_y) - signed(ball_y_pos);
					ball_x_pos := pixel_x;
					ball_y_pos := pixel_y;
					ball_found := '1';
				end if;
				
				pos_o(0) <= left_bat_pos;
				pos_o(1) <= right_bat_pos;
				pos_o(2) <= ball_x_pos;
				pos_o(3) <= ball_y_pos;
				
				ball_vel_o(0) <= ball_x_vel;
				ball_vel_o(1) <= ball_y_vel;
			end if;
		end if;
	end process;
	-- Assign output signals
	-- Positions
	-- Velocities
end Behavioral;

