--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:32:33 03/01/2015
-- Design Name:   
-- Module Name:   /home/student/Dropbox/Robotteknologi - Universitetet/8. Semester/EMB3/vga_encoder/graphics_controller_TB.vhd
-- Project Name:  vga_encoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: graphics_controller
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
 
ENTITY graphics_controller_TB IS
END graphics_controller_TB;
 
ARCHITECTURE behavior OF graphics_controller_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT graphics_controller
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         pixel_clk : buffer  std_logic;
         dena : OUT  std_logic;
         h_active : OUT  std_logic;
         v_active : OUT  std_logic;
         h_sync : buffer  std_logic;
         v_sync : buffer  std_logic;
         n_blanck : OUT  std_logic;
         n_sync : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal pixel_clk : std_logic;
   signal dena : std_logic;
   signal h_active : std_logic;
   signal v_active : std_logic;
   signal h_sync : std_logic;
   signal v_sync : std_logic;
   signal n_blanck : std_logic;
   signal n_sync : std_logic;

   -- Clock period definitions
   constant clk_period : time := 5 ns;
--   constant pixel_clk_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: graphics_controller PORT MAP (
          clk => clk,
          reset => reset,
          pixel_clk => pixel_clk,
          dena => dena,
          h_active => h_active,
          v_active => v_active,
          h_sync => h_sync,
          v_sync => v_sync,
          n_blanck => n_blanck,
          n_sync => n_sync
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
--   pixel_clk_process :process
--   begin
--		pixel_clk <= '0';
--		wait for pixel_clk_period/2;
--		pixel_clk <= '1';
--		wait for pixel_clk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '1';
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		reset <= '0';

      wait;
   end process;

END;
