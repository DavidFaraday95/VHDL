Library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity counterUp_tb is

end entity counterUp_tb;

architecture Behavioral of counterUp_tb is 
  signal rest: std_logic:= '0';
  signal clk: std_logic:= '0';
  signal o: std_logic_vector(3 downto 0);

  component counterUp is 
    Port (rest, clk: std_logic;
          o: out std_logic_vector(3 downto 0);
  end component;

  begin 
      DUT:  counterUp
          port map ( rest => rest;
            clk => clk;
              o => o
          );

          // expression without using falling_edge or rising_edge:
          clk <= not clk after 10 ns; 

        stimulus: process

          begin
          rest <= '1';
          wait for 20 ns;
          rest <= '0';
          wait for 450 ns;
          rest <= '1';
          wait for 20 ns;
          rest <= '0';
          wait;

        end process stimulus;

  end architecture Behavioral;

        
