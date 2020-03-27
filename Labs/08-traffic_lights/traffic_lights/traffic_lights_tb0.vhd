-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY traffic_lights_tb0 IS
  END traffic_lights_tb0;

  ARCHITECTURE behavioral OF traffic_lights_tb0 IS 

  -- Component Declaration
			 COMPONENT traffic_lights is
          PORT (
                  clk_i 		: IN std_logic;
                  srst_n_i 	: IN std_logic;       
                  lights_o 	: OUT std_logic_vector(5 downto 0)
                  );
          END COMPONENT;
			 
			 SIGNAL clk_i, srst_n_i	: std_logic := '1';       
          SIGNAL lights_o 			: std_logic_vector(5 downto 0) := (others => '0');

  BEGIN

  -- Component Instantiation
          uut: traffic_lights PORT MAP(
                  clk_i,
						srst_n_i,
						lights_o
          );


  --  Test Bench Statements
		CLK_GEN: process
			begin
				while true loop
					clk_i <= '0';
					wait for 5 ns;
					clk_i <= '1';
					wait for 5 ns;
				end loop;
			end process;
			
		STIM: process
			begin
				wait for 500 ns;
				srst_n_i <= '0';
				wait for 20 ns;
				srst_n_i <= '1';
				wait;
			end process;
  END;
