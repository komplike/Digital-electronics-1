--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:18:52 03/13/2020
-- Design Name:   
-- Module Name:   /home/komplike/Digital-electronics-1/Labs/06-display_driver/display_driver/disp_driver_tb00.vhd
-- Project Name:  display_driver
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY disp_driver_tb00 IS
END disp_driver_tb00;
 
ARCHITECTURE behavior OF disp_driver_tb00 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         clk_i : IN  std_logic;
         BTN0 : IN  std_logic;
         SW0_CPLD : IN  std_logic;
         SW1_CPLD : IN  std_logic;
         SW2_CPLD : IN  std_logic;
         SW3_CPLD : IN  std_logic;
         SW4_CPLD : IN  std_logic;
         SW5_CPLD : IN  std_logic;
         SW6_CPLD : IN  std_logic;
         SW7_CPLD : IN  std_logic;
         SW8_CPLD : IN  std_logic;
         SW9_CPLD : IN  std_logic;
         SW10_CPLD : IN  std_logic;
         SW11_CPLD : IN  std_logic;
         SW12_CPLD : IN  std_logic;
         SW13_CPLD : IN  std_logic;
         SW14_CPLD : IN  std_logic;
         SW15_CPLD : IN  std_logic;
         disp_dp : OUT  std_logic;
         disp_seg_o : OUT  std_logic_vector(6 downto 0);
         disp_dig_o : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal BTN0 : std_logic := '0';
   signal SW0_CPLD : std_logic := '0';
   signal SW1_CPLD : std_logic := '0';
   signal SW2_CPLD : std_logic := '0';
   signal SW3_CPLD : std_logic := '0';
   signal SW4_CPLD : std_logic := '0';
   signal SW5_CPLD : std_logic := '0';
   signal SW6_CPLD : std_logic := '0';
   signal SW7_CPLD : std_logic := '0';
   signal SW8_CPLD : std_logic := '0';
   signal SW9_CPLD : std_logic := '0';
   signal SW10_CPLD : std_logic := '0';
   signal SW11_CPLD : std_logic := '0';
   signal SW12_CPLD : std_logic := '0';
   signal SW13_CPLD : std_logic := '0';
   signal SW14_CPLD : std_logic := '0';
   signal SW15_CPLD : std_logic := '0';

 	--Outputs
   signal disp_dp : std_logic;
   signal disp_seg_o : std_logic_vector(6 downto 0);
   signal disp_dig_o : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          clk_i => clk_i,
          BTN0 => BTN0,
          SW0_CPLD => SW0_CPLD,
          SW1_CPLD => SW1_CPLD,
          SW2_CPLD => SW2_CPLD,
          SW3_CPLD => SW3_CPLD,
          SW4_CPLD => SW4_CPLD,
          SW5_CPLD => SW5_CPLD,
          SW6_CPLD => SW6_CPLD,
          SW7_CPLD => SW7_CPLD,
          SW8_CPLD => SW8_CPLD,
          SW9_CPLD => SW9_CPLD,
          SW10_CPLD => SW10_CPLD,
          SW11_CPLD => SW11_CPLD,
          SW12_CPLD => SW12_CPLD,
          SW13_CPLD => SW13_CPLD,
          SW14_CPLD => SW14_CPLD,
          SW15_CPLD => SW15_CPLD,
          disp_dp => disp_dp,
          disp_seg_o => disp_seg_o,
          disp_dig_o => disp_dig_o
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

      wait for clk_i_period*10;

      -- insert stimulus here
		SW15_CPLD <= '1'; wait for clk_i_period; -- ?
		
		SW15_CPLD <= '0';
		SW0_CPLD <= '1'; wait for clk_i_period; -- 1
		
		SW0_CPLD <= '0';
		SW1_CPLD <= '1'; wait for clk_i_period; -- 2
		
		SW0_CPLD <= '1';
		SW1_CPLD <= '0';
		SW2_CPLD <= '1'; wait for clk_i_period; -- 3
		
		SW0_CPLD <= '0';
		SW1_CPLD <= '0';
		SW2_CPLD <= '0';
		SW3_CPLD <= '1'; wait for clk_i_period; -- 4
		
		SW0_CPLD <= '1';
		SW1_CPLD <= '0';
		SW2_CPLD <= '0';
		SW3_CPLD <= '1'; wait for clk_i_period; -- 5
		
		SW0_CPLD <= '0';
		SW1_CPLD <= '1';
		SW2_CPLD <= '0';
		SW3_CPLD <= '1'; wait for clk_i_period; -- 6
		
	   wait for clk_i_period*200;

      wait;
   end process;

END;
