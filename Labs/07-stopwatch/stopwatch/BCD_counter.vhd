----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:52 03/17/2020 
-- Design Name: 
-- Module Name:    BCD_counter - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD_counter is
generic (g_num : positive := 9);
port (
	clk_i 	: in std_logic;
	srst_n_i : in std_logic;
	en_i		: in std_logic;
	cnt_o		: out std_logic_vector(4-1 downto 0);
	c_out		: out std_logic
	);
end BCD_counter;

architecture Behavioral of BCD_counter is
	signal s_cnt : std_logic_vector(4-1 downto 0) := (others => '0');
begin
	p_BCD_cnt : process (clk_i)
	begin
		if rising_edge(clk_i) then
			c_out <= '0';
			if srst_n_i = '0' then
				s_cnt <= (others => '0');
			elsif en_i = '1' then
				s_cnt <= s_cnt + 1;
				if s_cnt = g_num then
					s_cnt <= (others => '0');
					c_out <= '1';
				end if;
			end if;
		end if;
	end process p_BCD_cnt;
	
	cnt_o <= Std_logic_vector(s_cnt);

end Behavioral;

