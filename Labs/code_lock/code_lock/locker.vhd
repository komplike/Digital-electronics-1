library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity locker is
port (
	clk_i				: in  std_logic;
	cnt_i				: in  std_logic;
	btn_valid_i		: in  std_logic;
	btn_pressed_i	: in  std_logic_vector(3 downto 0);
	cnt_en_o			: out std_logic := '0';
	cnt_led_en_o	: out std_logic := '0';
	led_o				: out std_logic_vector(1 downto 0) := "00"
);
end entity locker;

architecture Behavioral of locker is
	signal pin0, pin1, pin2, pin3 : std_logic_vector(3 downto 0) := "0000";
	type state_type is (idle,set0,set1,set2,set3,pressed1,pressed2,pressed3,pressed4,err1,err2,err3,err4);
	signal state :	state_type := idle;

begin

	p_state_machine: process (clk_i,cnt_i,btn_valid_i,btn_pressed_i)
	begin
		if rising_edge(clk_i) then
			if (cnt_i = '1') then --CNT signals times up
				cnt_en_o <= '0'; --CNT to stop
				led_o <= "10"; --LED(RED) '1'
				cnt_led_en_o <= '1'; -- LED_CNT to start
				state <= idle;
			else
				case state is
					when idle =>
						if (btn_valid_i = '1') then
							led_o <= "00";
							cnt_led_en_o <= '0';
							if (btn_pressed_i = pin0) then
								cnt_en_o <= '1'; --CNT to start
								state <= pressed1;
							elsif (btn_pressed_i = "1011") then
								cnt_en_o <= '1'; --CNT to start
								state <= set0;
							else
								cnt_en_o <= '1'; --CNT to start
								state <= err1;
							end if;
						end if;
					when set0 =>
						if (btn_valid_i = '1') then
							pin0 <= btn_pressed_i;
							state <= set1;
						end if;
					when set1 =>
						if (btn_valid_i = '1') then
							pin1 <= btn_pressed_i;
							state <= set2;
						end if;
					when set2 =>
						if (btn_valid_i = '1') then
							pin2 <= btn_pressed_i;
							state <= set3;
						end if;
					when set3 =>
						if (btn_valid_i = '1') then
							pin3 <= btn_pressed_i;
							led_o <= "01"; --LED(GREEN) '1'
							cnt_led_en_o <= '1';
							cnt_en_o <= '0'; --CNT to stop
							state <= idle;
						end if;
					when pressed1 =>
						if (btn_valid_i = '1') then
							if (btn_pressed_i = pin1) then
								state <= pressed2;
							else
								state <= err2;
							end if;
						end if;
					when pressed2 =>
						if (btn_valid_i = '1') then
							if (btn_pressed_i = pin2) then
								state <= pressed3;
							else
								state <= err3;
							end if;
						end if;
					when pressed3 =>
						if (btn_valid_i = '1') then
							if (btn_pressed_i = pin3) then
								state <= pressed4;
							else
								state <= err4;
							end if;		
						end if;
					when pressed4 =>
						led_o <= "01"; --LED(GREEN) '1'
						cnt_led_en_o <= '1';
						cnt_en_o <= '0'; --CNT to stop
						state <= idle;
					when err1 =>
						if (btn_valid_i = '1') then
							state <= err2;
						end if;
					when err2 =>
						if (btn_valid_i = '1') then
							state <= err3;
						end if;
					when err3 =>
						if (btn_valid_i = '1') then
							state <= err4;
						end if;
					when err4 =>
						led_o <= "10"; --LED(RED) '1'
						cnt_led_en_o <= '1';
						cnt_en_o <= '0'; --CNT to stop
						state <= idle;
					when others =>
						led_o <= "10"; --LED(RED) '1'
						cnt_led_en_o <= '1';
						cnt_en_o <= '0';
						state <= idle;
				end case;
			end if;
		end if;
	end process;
end architecture Behavioral;

