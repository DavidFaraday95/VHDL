library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity testbench is
  end testbench;

  architecture sim of testbench is 
    signal clk_tb : std_logic := '0';
    signal rest_tb : std_logic := '0';
    signal o_tb : std_logic_vector (3 downto 0;

  -- Component declaration for hte unit under test (UUT)
  component counterUp
    port (
      rest : in std_logic;
      clk : in std_logic;
      o : out std_logic_vector(3 downto 0);
    );
  end component;

begin
  -- Instantiate the Unit Under Test (UUT)
  uut: counterUp
    port map(
      rest => rest_tb;
      clk => clk_tb;
      o => o_tb;
    );

  -- Clock process defintions
clk_tb_process: process
  begin
    while True loop
      clk_tb <= '0';
      wait for 10 ns;
    
      clk_tb <= '1';
      wait for 10 ns;
    end loop;
  end process

-- Stimulus process
stimulus process
begin
    -- Initialize Inputs 
    rest_tb <= '0';
    wait for 20 ns;
    -- Apply reset
    rest_tb <= '1';
    wait for 20 ns;
    rest_tb <= '0';

    -- Wait for some more time to observe the counter
  wait for 200 ns;

-- End simulation
  wait;
end process;

end sim;
