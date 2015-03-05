----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:06:10 03/03/2015 
-- Design Name: 
-- Module Name:    vertical_sync - Behavioral 
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

entity vertical_sync is
	 Generic ( 
			  Va: integer := 2;   -- Vpulse
			  Vb: integer := 35;	 -- Vpulse+VBP
			  Vc: integer := 515; -- Vpulse+VBP+Vactive
			  Vd: integer := 525  -- Vpulse+VBP+Vactvive+VFP
	 );
    Port ( h_sync : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           v_sync : buffer  STD_LOGIC;
           v_active : out  STD_LOGIC);
end vertical_sync;

architecture Behavioral of vertical_sync is

begin

--------------------------------------------
-- vertGenerator:
-- Creates the vertical clock
--------------------------------------------
vertGenerator : process(h_sync, reset)
	variable v_count : integer range 0 to Vd := 0;
begin
	if(reset = '1') then
		v_sync <= '0';
		v_active <= '0';
		v_count := 0;
	elsif (h_sync'event and h_sync = '1') then
		v_count := v_count + 1;
		if(v_count = Va) then
			v_sync <= '1';
		elsif(v_count = Vb) then
			v_active <= '1';
		elsif(v_count = Vc) then
			v_active <= '0';
		elsif(v_count = Vd) then
			v_sync <= '0';
			v_count := 0;
		end if;
	end if;
end process vertGenerator;


end Behavioral;

