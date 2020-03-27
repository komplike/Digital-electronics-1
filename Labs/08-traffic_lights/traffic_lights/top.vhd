----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:34:01 03/26/2020 
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

entity top is
	port (
		clk_i		: in  STD_LOGIC;
		BTN0		: in  STD_LOGIC;
		SW0		: in  STD_LOGIC;
		LD0_CPLD	: out STD_LOGIC;
		LD1_CPLD	: out STD_LOGIC;
		LD3_CPLD	: out STD_LOGIC;
		
		LD8_CPLD	: out STD_LOGIC;
		LD9_CPLD	: out STD_LOGIC;
		LD11_CPLD: out STD_LOGIC
		);		
end top;

architecture Behavioral of top is
	
signal srst_n_s, s_en, clk_en_s : STD_LOGIC;
signal lights_s : STD_LOGIC_VECTOR (5 downto 0);


begin
	LD0_CPLD <= lights_s(5);
	LD1_CPLD <= lights_s(4);
	LD3_CPLD <= lights_s(3);
	LD8_CPLD <= lights_s(2);
	LD9_CPLD <= lights_s(1);
	LD11_CPLD <= lights_s(0);

	srst_n_s <= BTN0_i;
	s_en <= SW0_i;
	
	CLK_EN0: entity work.clock_enable
		port map (
			clk_i => clk_i,
			srst_n_i => srst_n_s,
			clock_enable_o => clk_en_s
			);
	CLK_1S0: entity work.clock_1s
		port map (
			clk_i => clk_i,
			srst_n_i => srst_n_s,
			clk_1s => clk_1s
			);
	TRAFFIC0: entity work.traffic_lights
		port map (
			clk_i => clk_i,
			clk_1s => clk_1s,
			srst_n_i => srst_n_s,
			lights_o => lights_s
			);
			
end Behavioral;

