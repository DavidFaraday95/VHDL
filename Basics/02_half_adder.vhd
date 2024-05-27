library ieee;
use ieee.std_logic_1164.all;

entity half_adder is 
  port (  A,B  : in STD_LOGIC;
          SUM, Carry  : out STD_LOGIC);
end half_adder;


architecture Structural of half_adder is 
  component nand_gate 
  port ( A,B : in STD_LOGIC;
         Y  : out STD_LOGIC);
  end component;

  signal N1, N2, N3 : STD_LOGIC;

begin
  U1: entity nand_gate is
  port map(
    A  => A;
    B  => B;
    Y  => N1;
  );
  U2: entity nand_gate is
  port map(
    A  => A;
    B  => N1;
    Y  => N2;
  );
  U1: entity nand_gate is
  port map(
    A  => A;
    B  => N1;
    Y  => N3;
  );
  U1: entity nand_gate is
  port map(
    A  => N2;
    B  => N3;
    Y  => SUM;
  );

    CARRRY <= N1; 
end Structural;
