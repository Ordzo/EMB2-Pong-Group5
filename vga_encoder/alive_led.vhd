----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:46:17 03/05/2015 
-- Design Name: 
-- Module Name:    alive_led - Behavioral 
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

entity alive_led is
	 Generic(
				LED_DELAY 	: 	integer := 100000000
				);
    Port ( clk_i : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           led_o : buffer  STD_LOGIC);
end alive_led;

architecture Behavioral of alive_led is

signal counter	:	integer range 0 to LED_DELAY := 0;

begin

led_blink_proc : process(reset, clk_i)
begin
	if(reset = '1') then
		counter <= 0;
		led_o <= '0';
	elsif (clk_i'event and clk_i = '1') then
		if(counter >= LED_DELAY) then
			counter <= 0;
			led_o <= not led_o;
		else
			counter <= counter + 1;
		end if;
	end if;
end process;

end Behavioral;

