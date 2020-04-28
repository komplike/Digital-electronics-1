LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY counter_tb_00 IS
END counter_tb_00;
 
ARCHITECTURE behavior OF counter_tb_00 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
	 GENERIC (
    g_MAX    : unsigned(16-1 downto 0) := x"000A"; -- equals 100 ns
	 g_MAX2   : unsigned(16-1 downto 0) := x"0005" -- equals 50 ns
	 );
    PORT(
         clk_i : IN  std_logic;
         cnt_en_i : IN  std_logic;
         cnt_led_en_i : IN  std_logic;
         cnt_o : OUT  std_logic;
         cnt_led_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal cnt_en_i : std_logic := '0';
   signal cnt_led_en_i : std_logic := '0';

 	--Outputs
   signal cnt_o : std_logic;
   signal cnt_led_o : std_logic;

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          clk_i => clk_i,
          cnt_en_i => cnt_en_i,
          cnt_led_en_i => cnt_led_en_i,
          cnt_o => cnt_o,
          cnt_led_o => cnt_led_o
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
		cnt_en_i <= '1';
		wait for clk_i_period*2;
		cnt_en_i <= '0';
		wait for clk_i_period;
		cnt_en_i <= '1';		
		wait for clk_i_period*15;
		cnt_en_i <= '0';
		wait for clk_i_period*3;
		cnt_led_en_i <= '1';
		wait for clk_i_period*2;
		cnt_led_en_i <= '0';
		wait for clk_i_period;
		cnt_led_en_i <= '1';
		wait for clk_i_period*15;
		cnt_led_en_i <= '0';
		wait for clk_i_period;
      
		wait;
   end process;

END;
