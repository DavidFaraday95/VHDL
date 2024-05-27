library IEEE;
use ieee.std_logic_1164;

entity nand_gate is
  port (
    A : in std_logic;
    B : in std_logic;
    Y : out std_logic;
  );

  end nand_gate;

  architecture Behavioral of nand_gate is {
    begin
      y <= A nand B;
    end Behavioral;
  }
    
