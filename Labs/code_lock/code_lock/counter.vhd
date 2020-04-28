library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
generic (
	g_MAX    : unsigned(16-1 downto 0) := x"C350"; -- equals 5sec
	g_MAX2   : unsigned(16-1 downto 0) := x"4E20" -- equals 2sec
);
port (
    clk_i 	 		: in  std_logic;
	 cnt_en_i 		: in std_logic; -- reset (active low)
	 cnt_led_en_i	: in std_logic;
	 
    cnt_o 	 		: out std_logic := '0';
	 cnt_led_o		: out std_logic := '0'
);
end entity counter;

architecture Behavioral of counter is
    -- Internal signals
    signal s_cnt, s_cnt_led : unsigned(16-1 downto 0) := (others => '0');

begin
    p_cnt : process (clk_i,cnt_en_i)
    begin
        if rising_edge(clk_i) then          -- Rising clock edge
            if cnt_en_i = '0' then          -- Synchronous reset (active low)
                s_cnt <= (others => '0');   -- Clear all bits
                cnt_o <= '0';
            elsif s_cnt >= (g_MAX-1) then   -- Enable pulse
                s_cnt <= (others => '0');
                cnt_o <= '1';
            else
                s_cnt <= s_cnt + 1;
                cnt_o <= '0';
            end if;

        end if; -- Rising edge
    end process p_cnt;
	 
	 p_cnt_led : process (clk_i,cnt_led_en_i)
	 begin
		if rising_edge(clk_i) then          -- Rising clock edge
            if cnt_led_en_i = '0' then          -- Synchronous reset (active low)
                s_cnt_led <= (others => '0');   -- Clear all bits
                cnt_led_o <= '0';
            elsif s_cnt_led >= (g_MAX2-1) then   -- Enable pulse
                s_cnt_led <= (others => '0');
                cnt_led_o <= '0';
            else
                s_cnt_led <= s_cnt_led + 1;
                cnt_led_o <= '1';
            end if;

        end if; -- Rising edge
    end process p_cnt_led;

end architecture Behavioral;

