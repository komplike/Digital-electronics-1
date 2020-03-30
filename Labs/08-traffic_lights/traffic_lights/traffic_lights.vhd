----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:02:39 03/26/2020 
-- Design Name: 
-- Module Name:    traffic_lights - Behavioral 
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
use ieee.std_logic_unsigned.all;


entity traffic_lights is
	port (
		clk_i 	: in std_logic;
		clk_en_i	: in std_logic := '1';
		srst_n_i : in std_logic;
		lights_o : out std_logic_vector(5 downto 0)
		);
end entity traffic_lights;

architecture Behavioral of traffic_lights is
	type state_type is (g_r, y_r, r_r, r_g, r_y, r_r2);
	signal state :	state_type;
	signal cnt	 :	unsigned(3 downto 0);
	signal s_cnt :	unsigned(7 downto 0);
	constant SEC5: unsigned(3 downto 0) := "1001";
	constant SEC1: unsigned(3 downto 0) := "0001";
begin

	FSM: process (clk_i,srst_n_i)
	begin
		if rising_edge(clk_i) then
			if srst_n_i = '0' then
				state <= g_r;
				cnt <= X"0";
			else
				case state is
					when g_r =>
						if cnt < SEC5 then
							state <= g_r;
							cnt <= cnt + 1;
						else
							state <= y_r;
							cnt <= X"0";
						end if;
					when y_r =>
						if cnt < SEC1 then
							state <= y_r;
							cnt <= cnt + 1;
						else
							state <= r_r;
							cnt <= X"0";
						end if;
					when r_r =>
						if cnt < SEC1 then
							state <= r_r;
							cnt <= cnt + 1;
						else
							state <= r_g;
							cnt <= X"0";
						end if;
					when r_g =>
						if cnt < SEC5 then
							state <= r_g;
							cnt <= cnt + 1;
						else
							state <= r_y;
							cnt <= X"0";
						end if;
					when r_y =>
						if cnt < SEC1 then
							state <= r_y;
							cnt <= cnt + 1;
						else
							state <= r_r2;
							cnt <= X"0";
						end if;
					when r_r2 =>
						if cnt < SEC1 then
							state <= r_r2;
							cnt <= cnt + 1;
						else
							state <= g_r;
							cnt <= X"0";
						end if;
					when others =>
							state <= g_r;
				end case;
			end if;
		end if;
	end process;
	
	FSM_out: process(state)
	begin
		case state is
			when g_r 	=>	lights_o <= "001100";
			when y_r 	=>	lights_o <= "010100";
			when r_r 	=>	lights_o <= "100100";
			when r_g 	=>	lights_o <= "100001";
			when r_y 	=> lights_o <= "100010";
			when r_r2 	=>	lights_o <= "100100";
			when others => lights_o <= "100100";
		end case;
	end process;
	
end Behavioral;

