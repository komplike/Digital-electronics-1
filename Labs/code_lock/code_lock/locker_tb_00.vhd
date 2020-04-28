LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY locker_tb_00 IS
END locker_tb_00;
 
ARCHITECTURE behavior OF locker_tb_00 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT locker
    PORT(
         clk_i : IN  std_logic;
         cnt_i : IN  std_logic;
         btn_valid_i : IN  std_logic;
         btn_pressed_i : IN  std_logic_vector(3 downto 0);
         cnt_en_o : OUT  std_logic;
         cnt_led_en_o : OUT  std_logic;
         led_o : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal cnt_i : std_logic := '0';
   signal btn_valid_i : std_logic := '0';
   signal btn_pressed_i : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal cnt_en_o : std_logic;
   signal cnt_led_en_o : std_logic;
   signal led_o : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: locker PORT MAP (
          clk_i => clk_i,
          cnt_i => cnt_i,
          btn_valid_i => btn_valid_i,
          btn_pressed_i => btn_pressed_i,
          cnt_en_o => cnt_en_o,
          cnt_led_en_o => cnt_led_en_o,
          led_o => led_o
        );

   -- Clock process definitions
   clk_i_process :process
   begin
		clk_i <= '0';
		wait for clk_i_period/2;
		clk_i <= '1';
		wait for clk_i_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;

      -- insert stimulus here
		
		--testing default PIN : 0000
		btn_valid_i <= '1';
		btn_pressed_i <= "0000";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0000";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0000";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0000";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*5;
		--testing invalid PIN : 1234
		btn_valid_i <= '1';
		btn_pressed_i <= "0001";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0010";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0011";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0100";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*5;
		--testing set new PIN : 1234
		btn_valid_i <= '1';
		btn_pressed_i <= "1011"; --state <= set0
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0001";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0010";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0011";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0100";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*5;
		-- testing new valid PIN : 1234
		btn_valid_i <= '1';
		btn_pressed_i <= "0001";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0010";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0011";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0100";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*5;
		--testing times up cnt_i <= '1'
		btn_valid_i <= '1';
		btn_pressed_i <= "0001";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		btn_valid_i <= '1';
		btn_pressed_i <= "0010";
		wait for clk_i_period;
		btn_valid_i <= '0';
		wait for clk_i_period*2;
		cnt_i <= '1';
		wait for clk_i_period*10;

		wait;
   end process;

END;
