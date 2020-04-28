library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
port (
	clk_i : in std_logic;
	
	btn0_i : in std_logic;
	btn1_i : in std_logic;
	btn2_i : in std_logic;
	btn3_i : in std_logic;
	btn4_i : in std_logic;
	btn5_i : in std_logic;
	btn6_i : in std_logic;
	btn7_i : in std_logic;
	btn8_i : in std_logic;
	btn9_i : in std_logic;
	btn10_i : in std_logic; -- *
	btn11_i : in std_logic; -- #
	
	led0_o : out std_logic := '0'; --green led
	led1_o : out std_logic := '0'	--red	  led
	
);
end top;

architecture Behavioral of top is
	signal cnt_en_s, cnt_s, cnt_led_s, btn_valid_s : std_logic := '0';
	signal cnt_led_en_s : std_logic := '0';
	signal led_s : std_logic_vector(1 downto 0) := "00";
	signal btn_pressed_s : std_logic_vector(3 downto 0) := "0000";
	signal btn0_dly, btn1_dly, btn2_dly, btn3_dly, btn4_dly, btn5_dly, 
	btn6_dly, btn7_dly, btn8_dly, btn9_dly, btn10_dly, btn11_dly : std_logic := '0';

begin
	
	btn_decoder : process (clk_i,btn0_i,btn1_i,btn2_i,btn3_i,btn4_i,btn5_i,btn6_i,
									btn7_i,btn8_i,btn9_i,btn10_i,btn11_i)
	begin
	
	if rising_edge(clk_i) then
			btn0_dly <= btn0_i;
			btn1_dly <= btn1_i;
			btn2_dly <= btn2_i;
			btn3_dly <= btn3_i;
			btn4_dly <= btn4_i; 
			btn5_dly <= btn5_i; 
			btn6_dly <= btn6_i; 
			btn7_dly <= btn7_i; 
			btn8_dly <= btn8_i; 
			btn9_dly <= btn9_i; 
			btn10_dly <= btn10_i; 
			btn11_dly <= btn11_i;
			if (btn0_i = '1' and btn0_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "0000";
			elsif (btn1_i = '1' and btn1_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "0001";
			elsif (btn2_i = '1' and btn2_dly = '0') then
				btn_valid_s <= '1';		
				btn_pressed_s <= "0010";
			elsif (btn3_i = '1' and btn3_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "0011";
			elsif (btn4_i = '1' and btn4_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "0100";
			elsif (btn5_i = '1' and btn5_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "0101";
			elsif (btn6_i = '1' and btn6_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "0110";
			elsif (btn7_i = '1' and btn7_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "0111";
			elsif (btn8_i = '1' and btn8_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "1000";
			elsif (btn9_i = '1' and btn9_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "1001";
			elsif (btn10_i = '1' and btn10_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "1010";
			elsif (btn11_i = '1' and btn11_dly = '0') then
				btn_valid_s <= '1';
				btn_pressed_s <= "1011";
			else
				btn_valid_s <= '0';
			end if;
		end if;
	end process btn_decoder;
	
	led_decoder : process (clk_i,cnt_led_s,led_s)
	begin
		if rising_edge(clk_i) then
			if (cnt_led_s = '1') then
				if (led_s = "01") then
					led0_o <= '1';
				elsif (led_s = "10") then
					led1_o <= '1';
				end if;
			else
				led0_o <= '0';
				led1_o <= '0';
			end if;
		end if;
	end process led_decoder;

	CNT : entity work.counter
	generic map (
		g_MAX    => x"0064", -- equals 5sec
		g_MAX2   => x"0032" -- equals 2sec
	)
	port map (
		clk_i 		 => clk_i,
		cnt_en_i 	 => cnt_en_s,
		cnt_led_en_i => cnt_led_en_s,
		cnt_o 		 => cnt_s,
		cnt_led_o	 => cnt_led_s
	);

	LCK : entity work.locker
	port map (
	clk_i				=> clk_i,
	cnt_i				=> cnt_s,
	btn_valid_i		=> btn_valid_s,
	btn_pressed_i 	=> btn_pressed_s,
	cnt_en_o			=> cnt_en_s,
	cnt_led_en_o	=> cnt_led_en_s,
	led_o				=> led_s
	);
	
end architecture Behavioral;

