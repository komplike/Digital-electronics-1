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
		srst_n_i	: in  STD_LOGIC;
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
	
signal clk_en : STD_LOGIC;
signal lights_s : STD_LOGIC_VECTOR (5 downto 0);


begin
	srst_n_i <= BTN0;
	
	CLK_EN0: entity work.clock_enable
		port map (
			clk_i => clk_i,
			srst_n_i => srst_n_i,
			clock_enable_o => clk_en
			);
	TRAFFIC0: entity work.traffic_lights
		port map (
			clk_i => clk_i,
			srst_n_i => srst_n_i,
			lights => ld
			);
			
end Behavioral;

