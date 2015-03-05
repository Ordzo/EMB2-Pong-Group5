----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:40:01 03/03/2015 
-- Design Name: 
-- Module Name:    vga_generator - Behavioral 
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

entity vga_generator is
    Generic (
			  G_COLOR_WIDTH :	integer := 10
	 );
    Port ( clk_i 		: in  	STD_LOGIC;
           reset 		: in  	STD_LOGIC;
           h_sync 	: out    STD_LOGIC;
           h_active 	: out  	STD_LOGIC;
           v_sync 	: out	   STD_LOGIC;
           v_active 	: out 	STD_LOGIC;
			  
			  -- Color outputs
			  r_o			: out		STD_LOGIC_VECTOR(G_COLOR_WIDTH-1 downto 0);
			  g_o			: out		STD_LOGIC_VECTOR(G_COLOR_WIDTH-1 downto 0);
			  b_o			: out  	STD_LOGIC_VECTOR(G_COLOR_WIDTH-1 downto 0)
			  );
end vga_generator;

architecture Behavioral of vga_generator is

-- Pixel downscaling
constant PIXEL_CLK_25MHZ	:	integer 	:=	4;
signal	pixel_clk			:  std_logic;
signal 	pixel_clk_cnt		:	integer range 0 to PIXEL_CLK_25MHZ := 0;

-- Horizontal sync signals
constant HS_FP	 : 	integer := 16;		-- Front Porch
constant HS_SP  : 	integer := 96;    -- Pulse
constant HS_BP  : 	integer := 48;	   -- Back Porch
constant HS_PX	 : 	integer := 640;	-- Number of pixel lines (640 x 480)

constant HS_OFFSET				:	integer	:= HS_SP + HS_FP;
constant HS_PIXEL_PR_LINE		: 	integer 	:= HS_FP + HS_SP + HS_BP + HS_PX;

-- Vertical sync signals
constant VS_SP  :  integer := 2;		-- Pulse
constant VS_FP  :  integer := 10;		-- Front Porch
constant VS_BP  :  integer := 33;		-- Back Porch
constant VS_LN  :  integer := 480;	-- Number of line pixels (640 x 480)

constant VS_OFFSET				:  integer 	:= VS_SP + VS_BP;	
constant VS_LINES_PR_FRAME		:	integer	:= VS_SP + VS_FP + VS_BP + VS_LN;

-- Pixel counter
signal pixel_cnt_reg	: 	unsigned(9 downto 0) := (others => '0');
signal pixel_cnt_nxt	:  unsigned(9 downto 0) := (others => '0');

-- Line counter
signal line_cnt_reg	:  unsigned(9 downto 0) := (others => '0');
signal line_cnt_nxt	:  unsigned(9 downto 0) := (others => '0');


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

begin

--------------------------------------------
-- pixelClock:
-- Create pixel clock form 200MHz -> 25 MHz
--------------------------------------------
pixelClock : process(clk_i, reset)
begin
	if (reset = '1') then
		pixel_clk <= '0';
		pixel_clk_cnt <= 0;
	elsif(clk_i'event and	clk_i = '1') then
		if(pixel_clk_cnt >= PIXEL_CLK_25MHZ - 1) then
			pixel_clk <= not pixel_clk;
			pixel_clk_cnt <= 0;
			
			pixel_cnt_reg  <= pixel_cnt_nxt;
			line_cnt_reg 	<= line_cnt_nxt;
		else
			pixel_clk_cnt <= pixel_clk_cnt + 1;
		end if;
	end if;
end process pixelClock;

--------------------------------------------
-- horzGenerator:
-- Creates the horizontal clock
--------------------------------------------
--horzGenerator : process(pixel_clk, reset)
--	variable h_count : integer range 0 to H_FP + H_SP + H_BP + H_PX;
--begin
--	if (reset = '1') then
--		h_sync <= '0';
--		h_active <= '0';
--		h_count := 0;
--	elsif falling_edge(pixel_clk) then
--		h_count := h_count + 1;
--		if(h_count = H_SP) then
--			h_sync <= '1';
--		elsif(h_count = H_BP + H_SP) then
--			h_active <= '1';
--		elsif(h_count = H_PX + H_SP + H_BP) then
--			h_active <= '0';
--		elsif(h_count = H_FP + H_SP + H_BP + H_PX) then
--			h_sync <= '0';
--			h_count := 0;
--		end if;
--	end if;
--end process horzGenerator;

--------------------------------------------
-- vertGenerator:
-- Creates the vertical clock
--------------------------------------------
--vertGenerator : process(h_sync, reset)
--	variable v_count : integer range 0 to V_SP + V_BP + V_LN + V_FP := 0;
--begin
--	if(reset = '1') then
--		v_sync <= '0';
--		v_active <= '0';
--		v_count := 0;
--	elsif (h_sync'event and h_sync = '1') then
--		v_count := v_count + 1;
--		if(v_count = V_SP) then
--			v_sync <= '1';
--		elsif(v_count = V_SP + V_BP) then
--			v_active <= '1';
--		elsif(v_count = V_SP + V_BP + V_LN) then
--			v_active <= '0';
--		elsif(v_count = V_SP + V_BP + V_LN + V_FP) then
--			v_sync <= '0';
--			v_count := 0;
--		end if;
--	end if;
--end process vertGenerator;

-- Combinatorial control of the pixel and line counter
pixel_cnt_nxt <= pixel_cnt_reg + 1 when pixel_cnt_reg < HS_PIXEL_PR_LINE - 1
											  else (others => '0');
											  
line_cnt_nxt  <= line_cnt_reg + 1 when pixel_cnt_reg = HS_PIXEL_PR_LINE - 1 and line_cnt_reg < VS_LINES_PR_FRAME-1
											 else (others => '0') when pixel_cnt_reg = HS_PIXEL_PR_LINE-1 else line_cnt_reg;


-- Sync signals
h_sync <= '0' when pixel_cnt_reg < HS_SP else '1';
h_active <= '0' when (pixel_cnt_reg >= (HS_BP + HS_SP + HS_PX) or pixel_cnt_reg <= (HS_BP + HS_SP)) else '1';

v_sync <= '0' when line_cnt_reg < VS_SP else '1';
v_active <= '0' when (line_cnt_reg >= VS_SP + VS_BP + VS_LN or line_cnt_reg <= VS_SP + VS_BP) else '1';

-- left bat output
g_o <= (others=>'1') when (pixel_cnt_reg >= (C_LBAT_X1+HS_OFFSET) and 
									pixel_cnt_reg <= (C_LBAT_X2+HS_OFFSET) and 
									line_cnt_reg  >= (C_LBAT_Y1+VS_OFFSET) and 
									line_cnt_reg  <= (C_LBAT_Y2+VS_OFFSET)) else
		 (others=>'0');

-- ball bat output
r_o <= (others=>'1') when (pixel_cnt_reg >= (C_BALL_X1+HS_OFFSET) and 
									pixel_cnt_reg <= (C_BALL_X2+HS_OFFSET) and 
									line_cnt_reg  >= (C_BALL_Y1+VS_OFFSET) and 
									line_cnt_reg  <= (C_BALL_Y2+VS_OFFSET)) else
		 (others=>'0');

-- right bat output
b_o <= (others=>'1') when (pixel_cnt_reg >= (C_RBAT_X1+HS_OFFSET) and 
									pixel_cnt_reg <= (C_RBAT_X2+HS_OFFSET) and 
									line_cnt_reg  >= (C_RBAT_Y1+VS_OFFSET) and 
									line_cnt_reg  <= (C_RBAT_Y2+VS_OFFSET)) else
		 (others=>'0');
	

end Behavioral;

