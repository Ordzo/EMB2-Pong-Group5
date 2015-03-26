----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:00 02/26/2015 
-- Design Name: 
-- Module Name:    graphics_controller - Behavioral 
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

PACKAGE arr_pkg IS
	 type pos_array is array (0 to 3) of unsigned(9 downto 0);
	 type vel_array is array (0 to 1) of signed(9 downto 0);
END arr_pkg; 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

USE work.arr_pkg.all;


entity graphics_controller is
    Port ( clk_200M_i 		: in  STD_LOGIC;
			  reset				: in 	STD_LOGIC
			);
end graphics_controller;

architecture Behavioral of graphics_controller is

component Bat_Finder IS 
Port ( 		clk_i					: in 		STD_LOGIC;
			  rst					   : in     STD_LOGIC;
			  pixel_x				: in		UNSIGNED(9 downto 0);
			  pixel_y 				: in 		UNSIGNED(9 downto 0);	
           R_i 					: in  	UNSIGNED(9 downto 0);
           G_i 					: in  	UNSIGNED(9 downto 0);
           B_i 					: in  	UNSIGNED(9 downto 0);
           pos_o 					: out  	pos_array;
           ball_vel_o 			: out 	vel_array
			  );
end component;


signal R_test : unsigned(9 downto 0) := (others => '1');
signal G_test : unsigned(9 downto 0) := (others => '0');
signal B_test : unsigned(9 downto 0) := (others => '0');
signal pos_array_test : pos_array;
signal vel_array_test : vel_array;
signal pix_x : unsigned(9 downto 0) := to_unsigned(1, 10);
signal pix_y : unsigned(9 downto 0) := to_unsigned(1, 10);

begin 	

Bat_Finder_inst: Bat_Finder
	port map(  	clk_i					=>	clk_200M_i,
					rst					=> reset,
					pixel_x				=> pix_x,
					pixel_y 				=> pix_y,	
					R_i 					=> R_test,
					G_i 					=> G_test,
					B_i 					=> B_test,
					pos_o 				=> pos_array_test,
					ball_vel_o 			=>	vel_array_test);
					
end Behavioral;

