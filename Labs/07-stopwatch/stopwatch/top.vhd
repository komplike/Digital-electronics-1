----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:29 03/20/2020 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
	port (
		clk_i			: in	 std_logic;
		BTN0_i		: in	 std_logic := '0';
		disp_seg_o	: out	 std_logic_vector(7-1 downto 0);
		disp_dig_o 	: out	 std_logic_vector(4-1 downto 0);
		disp_dp_o  	: out	 std_logic
		SW0_i			: in	 std_logic := '0';
	);
end top;

architecture Behavioral of top is
	signal s_en,dp_s  : std_logic := '0';
	signal seg_s : std_logic_vector(7-1 downto 0) := (others => '0');
	signal sec_h_s, sec_l_s,hth_h_s, hth_l_s, dig_s : std_logic_vector(4-1 downto 0) := (others => '0');
begin

disp_seg_o <= seg_s;
disp_dig_o <= dig_s;
disp_dp_o  <= dp_s;


	CLK_EN_0 : entity work.clock_enable
		 generic map (
			  g_NPERIOD => x"0064"        -- @ 10 ms if fclk = 10 kHz
		 )
		 port map (
			  clk_i          => clk_i,    -- 10 kHz
			  srst_n_i       => BTN0_i,     -- Synchronous reset
			  clock_enable_o => s_en
		 );
	DRIVERSSEG: entity work.driver_7seg
        port map (
				clk_i   	=> clk_i,
				srst_n_i 	=> BTN0_i,
				data0_i  	=> sec_h_s,
				data1_i  	=> sec_l_s,
				data2_i  	=> hth_h_s,
				data3_i   => hth_l_s,
				dp_i      => "1011",
				dp_o      => dp_s,
				seg_o     => seg_s,
				dig_o     => dig_s
			);

	STOPWATCH : entity work.stopwatch_cnt
		port map (
			clk_i			=> clk_i,
			srst_n_i		=> BTN0_i,
			ce_100Hz_i	=> s_en,
			cnt_en_i		=> SW0_i,
			sec_h_o		=> sec_h_s,
			sec_l_o		=> sec_l_s,
			hth_h_o		=> hth_h_s,
			hth_l_o		=> hth_l_s
		);


end Behavioral;

