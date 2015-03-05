--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:00:37 03/03/2015
-- Design Name:   
-- Module Name:   /home/student/Dropbox/Robotteknologi - Universitetet/8. Semester/EMB3/vga_encoder/vga_encoder_TB.vhd
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
 
ENTITY vga_encoder_TB IS
END vga_encoder_TB;
 
ARCHITECTURE behavior OF vga_encoder_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT graphics_controller
    PORT(
         clk_200M_i : IN  std_logic;
         reset : IN  std_logic;
         j8_vga_hsync_o : OUT  std_logic;
         j8_vga_vsync_o : OUT  std_logic;
         j8_vga_red_o : OUT  std_logic_vector(2 downto 0);
         j8_vga_blue_o : OUT  std_logic_vector(2 downto 0);
         j8_vga_green_o : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_200M_i : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal j8_vga_hsync_o : std_logic;
   signal j8_vga_vsync_o : std_logic;
   signal j8_vga_red_o : std_logic_vector(2 downto 0);
   signal j8_vga_blue_o : std_logic_vector(2 downto 0);
   signal j8_vga_green_o : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_200M_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: graphics_controller PORT MAP (
          clk_200M_i => clk_200M_i,
          reset => reset,
          j8_vga_hsync_o => j8_vga_hsync_o,
          j8_vga_vsync_o => j8_vga_vsync_o,
          j8_vga_red_o => j8_vga_red_o,
          j8_vga_blue_o => j8_vga_blue_o,
          j8_vga_green_o => j8_vga_green_o
        );

   -- Clock process definitions
   clk_200M_i_process :process
   begin
		clk_200M_i <= '0';
		wait for clk_200M_i_period/2;
		clk_200M_i <= '1';
		wait for clk_200M_i_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '1';
      wait for 100 ns;	

      wait for clk_200M_i_period*10;

      -- insert stimulus here 
		reset <= '0';

      wait;
   end process;

END;
