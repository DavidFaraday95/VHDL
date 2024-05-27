library ieee;
use ieee.std_logic_1164.all;

entity counter_tb is
end entity counter_tb;

architecture Behavioral of counter_tb is
    -- def component counter
    -- def signal
begin
  -- counterport map
  -- Clock generation in counter_tb
  clk_tb <= not clk_tb after 10ns;

  -- Stimulus process
  process 
  begin
    rst_tb <= '1'; -- Assert reset
    wait for 20 ns;
    rst_tb <= '0'; -- De-Assert reset
    wait for 405 ns;
    rst_tb <= '1'; -- Assert reset
    wait for 20 ns;
    rst_tb <= '0'; -- De-Assert reset
    wait;

  end process stimulus_process;

end architecture Behavioral;
