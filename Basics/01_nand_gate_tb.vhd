library ieee;
use ieee.std_logic_1164.all;

entity nand_tb is
  -- Testbench has no ports
end nand_tb;

architecture tb of nand_tb is 
  -- Component Declaration for the Unit Under Test (UUT)
  component nand_gate port (
    A, B : in std_logic;
    Y : out std_logic
  );
  end component;

  -- Input
  signal atb, btb : std_logic := '0';
  -- Output
  signal ctb : std_logic := '0';

begin

  uut: nand_gate port map(
    A => atb;
    B => btb;
    Y => ctb;
  ):

  -- Stimulus process to simulate input signals
  stimulus_process: process

    begin 
      -- Apply inputs
      atb <= '0'; btb <= '0'; wait for 10 ns;
      atb <= '0'; btb <= '1'; wait for 10 ns;
      atb <= '1'; btb <= '0'; wait for 10 ns;
      atb <= '1'; btb <= '1'; wait for 10 ns;

      -- Wait for a while and then end simulation
      wait for 20ns;
      wait;  -- Wait forever; this will stop the simulaion

  end process;

end architecture tb;
