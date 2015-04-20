--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:25 04/16/2015
-- Design Name:   
-- Module Name:   C:/Xpro_v14/8_semester/EMB2-Pong-Group5/vga_decoder/vga_decoder/vga_decoder_test_tb.vhd
-- Project Name:  vga_decoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_decoder_test
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
USE ieee.numeric_std.ALL;
 
ENTITY vga_decoder_test_tb IS
END vga_decoder_test_tb;
 
ARCHITECTURE behavior OF vga_decoder_test_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_decoder_test
    PORT(
         clk_200M_i : IN  std_logic;
         fx2_vga_hsync_i : IN  std_logic;
         fx2_vga_vsync_i : IN  std_logic;
         fx2_vga_red_i : IN  std_logic_vector(9 downto 0);
         fx2_vga_green_i : IN  std_logic_vector(9 downto 0);
         fx2_vga_blue_i : IN  std_logic_vector(9 downto 0);
         fx2_vga_red_clk_o : OUT  std_logic;
         fx2_vga_green_clk_o : OUT  std_logic;
         fx2_vga_blue_clk_o : OUT  std_logic;
         led_o : OUT  std_logic_vector(0 to 6)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_200M_i : std_logic := '0';
   signal fx2_vga_hsync_i : std_logic := '0';
   signal fx2_vga_vsync_i : std_logic := '0';
   signal fx2_vga_red_i : std_logic_vector(9 downto 0) := (others => '0');
   signal fx2_vga_green_i : std_logic_vector(9 downto 0) := (others => '0');
   signal fx2_vga_blue_i : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal fx2_vga_red_clk_o : std_logic;
   signal fx2_vga_green_clk_o : std_logic;
   signal fx2_vga_blue_clk_o : std_logic;
   signal led_o : std_logic_vector(0 to 6);

   -- Clock period definitions
   constant clk_200M_i_period : time := 5 ns;


	-- ##### VGA generator: ######
	CONSTANT G_COLOR_WIDTH  : integer := 10;
	CONSTANT G_PXL_CLK_PRD	: time := 39721946 fs;
	
	signal C_H_FP : integer := 16;
	signal C_H_SP : integer := 96;
	signal C_H_BP : integer := 48;
	signal C_H_PX : integer := 640;
	
	signal C_HS_OFFSET : integer := C_H_SP+C_H_BP;	
	signal C_PIXEL_PR_LINE : integer := C_H_FP+C_H_SP+C_H_BP+C_H_PX;	
	signal C_V_FP : integer := 10;
	signal C_V_SP : integer := 2;
	signal C_V_BP : integer := 33;
	signal C_V_LN : integer := 480;
	
	signal C_VS_OFFSET : integer := C_V_SP+C_V_BP;	
	signal C_LINES_PR_FRAME : integer := C_V_FP+C_V_SP+C_V_BP+C_V_LN;	
	
	signal pxl_clk			: std_logic;
	
	signal pixel_cnt_reg : unsigned(9 downto 0) := (others=>'0');
	signal pixel_cnt_nxt : unsigned(9 downto 0);
	
	
	signal line_cnt_reg : unsigned(9 downto 0) := (others=>'0');
	signal line_cnt_nxt : unsigned(9 downto 0);
	

	-- Left bat: 20x100 pixels, centered in the left visible part of the screen at x=20
	--
	-- top-left corner @(20,189)     -> plus offset -> (164,224) 
	-- top-right corner @(39,189)    -> plus offset -> (183,224) 
	-- bottom-left corner @(20,288)  -> plus offset -> (164,323) 
	-- bottom-right corner @(39,288) -> plus offset -> (183,323)
	constant C_LBAT_X1 : integer := 20;
	constant C_LBAT_X2 : integer := 39;
	constant C_LBAT_Y1 : integer := 189;
	constant C_LBAT_Y2 : integer := 288;

	-- Ball: 20x20 pixels, centered in the visible part of the screen
	--
	-- top-left corner @(310,230)     -> plus offset -> (454,265) 
	-- top-right corner @(329,230)    -> plus offset -> (473,265) 
	-- bottom-left corner @(310,249)  -> plus offset -> (454,284) 
	-- bottom-right corner @(329,249) -> plus offset -> (473,284)
	constant C_BALL_X1 : integer := 310;
	constant C_BALL_X2 : integer := 329;
	constant C_BALL_Y1 : integer := 230;
	constant C_BALL_Y2 : integer := 249;

	-- Right bat: 20x100 pixels, centered in the right visible part of the screen at x=640-40 = 600
	--
	-- top-left corner @(600,189)     -> plus offset -> (744,224) 
	-- top-right corner @(619,189)    -> plus offset -> (763,224) 
	-- bottom-left corner @(600,288)  -> plus offset -> (744,323) 
	-- bottom-right corner @(619,288) -> plus offset -> (763,323)
	constant C_RBAT_X1 : integer := 600;
	constant C_RBAT_X2 : integer := 619;
	constant C_RBAT_Y1 : integer := 189;
	constant C_RBAT_Y2 : integer := 288;
	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_decoder_test PORT MAP (
          clk_200M_i => clk_200M_i,
          fx2_vga_hsync_i => fx2_vga_hsync_i,
          fx2_vga_vsync_i => fx2_vga_vsync_i,
          fx2_vga_red_i => fx2_vga_red_i,
          fx2_vga_green_i => fx2_vga_green_i,
          fx2_vga_blue_i => fx2_vga_blue_i,
          fx2_vga_red_clk_o => fx2_vga_red_clk_o,
          fx2_vga_green_clk_o => fx2_vga_green_clk_o,
          fx2_vga_blue_clk_o => fx2_vga_blue_clk_o,
          led_o => led_o
        );

   -- Clock process definitions
   clk_200M_i_process :process
   begin
		clk_200M_i <= '0';
		wait for clk_200M_i_period/2;
		clk_200M_i <= '1';
		wait for clk_200M_i_period/2;
   end process;
	
	--VGA CLOCK:
   process
	begin
		pxl_clk <= '0';
		wait for G_PXL_CLK_PRD/2;
		pxl_clk <= '1';
		wait for G_PXL_CLK_PRD/2;
	end process;
	
	-- HS and VS generator
	process(pxl_clk)
	begin
		if rising_edge(pxl_clk) then		
			pixel_cnt_reg <= pixel_cnt_nxt;
			line_cnt_reg <= line_cnt_nxt;
		end if;
	end process;
	
	pixel_cnt_nxt <= pixel_cnt_reg+1 when pixel_cnt_reg<C_PIXEL_PR_LINE-1 else (others=>'0');
	line_cnt_nxt <= line_cnt_reg+1 when pixel_cnt_reg=C_PIXEL_PR_LINE-1 and line_cnt_reg<C_LINES_PR_FRAME-1 else 
						 (others=>'0')  when pixel_cnt_reg=C_PIXEL_PR_LINE-1 else
						 line_cnt_reg;
	
	fx2_vga_hsync_i <= '0' when pixel_cnt_reg < C_H_SP else '1';
	fx2_vga_vsync_i <= '0' when line_cnt_reg < C_V_SP else '1';
	
	-- left bat output
	fx2_vga_green_i <= (others=>'1') when (pixel_cnt_reg >= (C_LBAT_X1+C_HS_OFFSET) and 
										pixel_cnt_reg <= (C_LBAT_X2+C_HS_OFFSET) and 
										line_cnt_reg  >= (C_LBAT_Y1+C_VS_OFFSET) and 
										line_cnt_reg  <= (C_LBAT_Y2+C_VS_OFFSET)) else
			 (others=>'0');

	-- ball bat output
	fx2_vga_red_i <= (others=>'1') when (pixel_cnt_reg >= (C_BALL_X1+C_HS_OFFSET) and 
										pixel_cnt_reg <= (C_BALL_X2+C_HS_OFFSET) and 
										line_cnt_reg  >= (C_BALL_Y1+C_VS_OFFSET) and 
										line_cnt_reg  <= (C_BALL_Y2+C_VS_OFFSET)) else
			 (others=>'0');

	-- right bat output
	fx2_vga_blue_i <= (others=>'1') when (pixel_cnt_reg >= (C_RBAT_X1+C_HS_OFFSET) and 
										pixel_cnt_reg <= (C_RBAT_X2+C_HS_OFFSET) and 
										line_cnt_reg  >= (C_RBAT_Y1+C_VS_OFFSET) and 
										line_cnt_reg  <= (C_RBAT_Y2+C_VS_OFFSET)) else
			 (others=>'0');



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_200M_i_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
