LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY code_lock_tb_00 IS
END code_lock_tb_00;
 
ARCHITECTURE behavior OF code_lock_tb_00 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
	 GENERIC (
			 g_MAX    : unsigned(16-1 downto 0);
			 g_MAX2   : unsigned(16-1 downto 0)
	 );
    PORT(
         clk_i : IN  std_logic;
         btn0_i : IN  std_logic;
         btn1_i : IN  std_logic;
         btn2_i : IN  std_logic;
         btn3_i : IN  std_logic;
         btn4_i : IN  std_logic;
         btn5_i : IN  std_logic;
         btn6_i : IN  std_logic;
         btn7_i : IN  std_logic;
         btn8_i : IN  std_logic;
         btn9_i : IN  std_logic;
         btn10_i : IN  std_logic;
         btn11_i : IN  std_logic;
         led0_o : OUT  std_logic;
         led1_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal btn0_i : std_logic := '0';
   signal btn1_i : std_logic := '0';
   signal btn2_i : std_logic := '0';
   signal btn3_i : std_logic := '0';
   signal btn4_i : std_logic := '0';
   signal btn5_i : std_logic := '0';
   signal btn6_i : std_logic := '0';
   signal btn7_i : std_logic := '0';
   signal btn8_i : std_logic := '0';
   signal btn9_i : std_logic := '0';
   signal btn10_i : std_logic := '0';
   signal btn11_i : std_logic := '0';

 	--Outputs
   signal led0_o : std_logic;
   signal led1_o : std_logic;

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top 
	GENERIC MAP (
			 g_MAX => x"0005", -- 5 ms for test purposes 
			 g_MAX2 => x"0002" -- 2 ms for test purposes 
	)
	PORT MAP (
          clk_i  => clk_i,
          btn0_i => btn0_i,
          btn1_i => btn1_i,
          btn2_i => btn2_i,
          btn3_i => btn3_i,
          btn4_i => btn4_i,
          btn5_i => btn5_i,
          btn6_i => btn6_i,
          btn7_i => btn7_i,
          btn8_i => btn8_i,
          btn9_i => btn9_i,
          btn10_i => btn10_i,
          btn11_i => btn11_i,
          led0_o => led0_o,
          led1_o => led1_o
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
		
      --wait for 100 ns;
		wait for 5 ns;

      -- insert stimulus here 
		-- test for initial 0000 pin code
		btn0_i <= '1';
		wait for clk_i_period*2;
		btn0_i <= '0';
		wait for clk_i_period*3;
		btn0_i <= '1';
		wait for clk_i_period*2;
		btn0_i <= '0';
		wait for clk_i_period*3;
		btn0_i <= '1';
		wait for clk_i_period*2;
		btn0_i <= '0';
		wait for clk_i_period*3;
		btn0_i <= '1';
		wait for clk_i_period*2;
		btn0_i <= '0';
		wait for clk_i_period*3;
--		-- test for failure
--		btn0_i <= '1';
--		btn0_i <= '0';
--		wait for clk_i_period;
--		btn1_i <= '1';
--		btn1_i <= '0';
--		wait for clk_i_period;
--		btn2_i <= '1';
--		btn2_i <= '0';
--		wait for clk_i_period;
--		btn3_i <= '1';
--		btn3_i <= '0';
--		wait for clk_i_period;
--		-- test for set new PIN
--		btn10_i <= '1';
--		btn10_i <= '0';
--		wait for clk_i_period;
--		btn0_i <= '1';
--		btn0_i <= '0';
--		wait for clk_i_period;
--		btn1_i <= '1';
--		btn1_i <= '0';
--		wait for clk_i_period;
--		btn2_i <= '1';
--		btn2_i <= '0';
--		wait for clk_i_period;
--		btn3_i <= '1';
--		btn3_i <= '0';
--		wait for clk_i_period;
--		-- test for new PIN
--		btn0_i <= '1';
--		btn0_i <= '0';
--		wait for clk_i_period;
--		btn1_i <= '1';
--		btn1_i <= '0';
--		wait for clk_i_period;
--		btn2_i <= '1';
--		btn2_i <= '0';
--		wait for clk_i_period;
--		btn3_i <= '1';
--		btn3_i <= '0';
--		wait for clk_i_period;
--		-- test for time out (5 expired)
--		btn0_i <= '1';
--		btn0_i <= '0';
--		wait for clk_i_period*5;
      wait;
   end process;

END;
