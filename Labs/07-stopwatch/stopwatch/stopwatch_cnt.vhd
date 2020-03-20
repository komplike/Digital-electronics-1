----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:22:49 03/17/2020 
-- Design Name: 
-- Module Name:    stopwatch_cnt - Behavioral 
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

entity stopwatch_cnt is
port (
	clk_i			: in  std_logic := '0';
	srst_n_i		: in  std_logic := '1';
	ce_100Hz_i	: in  std_logic := '0';
	cnt_en_i		: in  std_logic := '0';
	
	sec_h_o,sec_l_o,hth_h_o,hth_l_o : out std_logic_vector(4-1 downto 0) := (others => '0')
	);
end entity stopwatch_cnt;

architecture Behavioral of stopwatch_cnt is
	signal	en_bcdc_s : std_logic_vector(4-1 downto 0) := (others => '0');
	signal 	rst_i : std_logic := '0';
begin
		BCD_counter0 : entity work.BCD_counter
			generic map (g_num => 9)
			port map (
				clk_i => clk_i,
				srst_n_i => srst_n_i,
				en_i => en_bcdc_s(0),
				cnt_o => sec_l_o,
				c_out => en_bcdc_s(1)
			);
		BCD_counter1 : entity work.BCD_counter
			generic map (g_num => 9)
			port map (
				clk_i => clk_i,
				srst_n_i => srst_n_i,
				en_i => en_bcdc_s(1),
				cnt_o => sec_h_o,
				c_out => en_bcdc_s(2)
			);
		BCD_counter2 : entity work.BCD_counter
			generic map (g_num => 9)
			port map (
				clk_i => clk_i,
				srst_n_i => srst_n_i,
				en_i => en_bcdc_s(2),
				cnt_o => hth_l_o,
				c_out => en_bcdc_s(3)
			);
		BCD_counter3 : entity work.BCD_counter
			generic map (g_num => 5)
			port map (
				clk_i => clk_i,
				srst_n_i => srst_n_i,
				en_i => en_bcdc_s(3),
				cnt_o => hth_h_o,
				c_out => rst_i
			);
		p_cnt : process (clk_i)
		begin
			if rising_edge(clk_i) then
				if (srst_n_i = '0' or rst_i = '1') then
					en_bcdc_s(0) <= '0';
				else
					en_bcdc_s(0) <= (ce_100Hz_i and cnt_en_i);
				end if;
			end if;
		end process p_cnt;
					
end Behavioral;

