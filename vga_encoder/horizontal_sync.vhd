----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:42 03/03/2015 
-- Design Name: 
-- Module Name:    horizontal_sync - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity horizontal_sync is
	 Generic (
	 		  Ha: integer := 96;  -- Hpulse
			  Hb: integer := 144; -- Hpulse+HBP (Horizontal back porch)
			  Hc: integer := 784; -- Hpulse+HBP+Hactive
			  Hd: integer := 800 -- Hpulse+HBP+Hactive+HFP
			  );
    Port ( pixel_clk : in  STD_LOGIC;
			  reset		: in 	STD_LOGIC;
           h_sync	   : buffer  STD_LOGIC;
           h_active  : out  STD_LOGIC);
end horizontal_sync;

architecture Behavioral of horizontal_sync is

begin


--------------------------------------------
-- horzGenerator:
-- Creates the horizontal clock
--------------------------------------------
horzGenerator : process(pixel_clk, reset)
	variable h_count : integer range 0 to Hd;
begin
	if (reset = '1') then
		h_sync <= '0';
		h_active <= '0';
		h_count := 0;
	elsif falling_edge(pixel_clk) then
		h_count := h_count + 1;
		if(h_count = Ha) then
			h_sync <= '1';
		elsif(h_count = Hb) then
			h_active <= '1';
		elsif(h_count = Hc) then
			h_active <= '0';
		elsif(h_count = Hd) then
			h_sync <= '0';
			h_count := 0;
		end if;
	end if;
end process horzGenerator;

end Behavioral;

