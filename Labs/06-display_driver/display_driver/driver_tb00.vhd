--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:45:54 03/13/2020
-- Design Name:   
-- Module Name:   /home/komplike/Digital-electronics-1/Labs/06-display_driver/display_driver/driver_tb00.vhd
-- Project Name:  display_driver
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: driver_7seg
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
 
ENTITY driver_tb00 IS
END driver_tb00;
 
ARCHITECTURE behavior OF driver_tb00 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT driver_7seg
    PORT(
         clk_i : IN  std_logic;
         srst_n_i : IN  std_logic;
         data0_i : IN  std_logic_vector(3 downto 0);
         data1_i : IN  std_logic_vector(3 downto 0);
         data2_i : IN  std_logic_vector(3 downto 0);
         data3_i : IN  std_logic_vector(3 downto 0);
         dp_i : IN  std_logic_vector(3 downto 0);
         dp_o : OUT  std_logic;
         seg_o : OUT  std_logic_vector(6 downto 0);
         dig_o : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_i : std_logic := '0';
   signal srst_n_i : std_logic := '0';
   signal data0_i : std_logic_vector(3 downto 0) := (others => '0');
   signal data1_i : std_logic_vector(3 downto 0) := (others => '0');
   signal data2_i : std_logic_vector(3 downto 0) := (others => '0');
   signal data3_i : std_logic_vector(3 downto 0) := (others => '0');
   signal dp_i : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal dp_o : std_logic;
   signal seg_o : std_logic_vector(6 downto 0);
   signal dig_o : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_i_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: driver_7seg PORT MAP (
          clk_i => clk_i,
          srst_n_i => srst_n_i,
          data0_i => data0_i,
          data1_i => data1_i,
          data2_i => data2_i,
          data3_i => data3_i,
          dp_i => dp_i,
          dp_o => dp_o,
          seg_o => seg_o,
          dig_o => dig_o
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

      wait for clk_i_period;

      -- insert stimulus here 
		data0_i <= "0001"; wait for clk_i_period; --1
		data0_i <= "0010"; wait for clk_i_period; --2
		data0_i <= "0100"; wait for clk_i_period; --4
		data0_i <= "1000"; wait for clk_i_period; --8
		data1_i <= "0001";
		data0_i <= "0110"; wait for clk_i_period; --16
		data1_i <= "0011";
		data0_i <= "0010"; wait for clk_i_period; --32
		data1_i <= "0100";
		data0_i <= "0110"; wait for clk_i_period; --64
		data2_i <= "0001";
		data1_i <= "0010";
		data0_i <= "1000"; wait for clk_i_period; --128
		data2_i <= "0010";
		data1_i <= "0101";
		data0_i <= "0110"; wait for clk_i_period; --256
		data2_i <= "0101";
		data1_i <= "0001";
		data0_i <= "0010"; wait for clk_i_period; --512
		data3_i <= "0001";
		data2_i <= "0000";
		data1_i <= "0010";
		data0_i <= "0100"; wait for clk_i_period; --1024
		data3_i <= "0010";
		data2_i <= "0000";
		data1_i <= "0100";
		data0_i <= "1000"; wait for clk_i_period; --2048
		data3_i <= "0100";
		data2_i <= "0000";
		data1_i <= "1001";
		data0_i <= "0110"; wait for clk_i_period; --4096
		
		srst_n_i <= '1'; wait for clk_i_period; --rst
		srst_n_i <= '0'; wait for clk_i_period;
		
		--3.14159265
		data0_i <= "0011"; wait for clk_i_period*2; -- 3
		
		data1_i <= "0011";
		dp_i <= "1101";
		data0_i <= "0001"; wait for clk_i_period*2; -- 3.1
		
		data2_i <= "0011";
		dp_i <= "1011";
		data1_i <= "0001";
		data0_i <= "0100"; wait for clk_i_period*2; -- 3.14
		
		data3_i <= "0011";
		dp_i <= "0111";
		data2_i <= "0001";
		data1_i <= "0100";
		data0_i <= "0001"; wait for clk_i_period*2; -- 3.141
		
		data3_i <= "0001";
		dp_i <= "1111";
		data2_i <= "0100";
		data1_i <= "0001";
		data0_i <= "0101"; wait for clk_i_period*2; -- 1415
		
		data3_i <= "0100";
		data2_i <= "0001";
		data1_i <= "0101";
		data0_i <= "1001"; wait for clk_i_period*2; -- 4159
		
		data3_i <= "0001";
		data2_i <= "0101";
		data1_i <= "1001";
		data0_i <= "0010"; wait for clk_i_period*2; -- 1592
		
		data3_i <= "0101";
		data2_i <= "1001";
		data1_i <= "0010";
		data0_i <= "0110"; wait for clk_i_period*2; -- 5926
		
		data3_i <= "1001";
		data2_i <= "0010";
		data1_i <= "0110";
		data0_i <= "0101"; wait for clk_i_period*2; -- 9265
		
		srst_n_i <= '1'; wait for clk_i_period; --rst
		
		wait;
   end process;

END;
