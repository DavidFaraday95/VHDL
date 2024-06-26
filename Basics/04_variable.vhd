library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity counterUp is
  port (
    rest, clk : in std_logic;
    o         : out std_logic_vector(3 downto 0)
  );
end counterUp;

architecture counterUP_2 of counterUp is 
begin

process (clk)
  variable o_temp_var: std_logic_vector(3 downto 0) := "0000";
begin
  if (clk'event and clk = '1') then
    if (rest = '1') then
      o_temp_var := "0000";
    elsif (o_temp_var = "1111") then
      o_temp_var := "0000";
    else
      o_temp_var := o_temp_var + 1;
    end if;
    o <= o_temp_var;
  end if;
end process;

end counterUP_2;
