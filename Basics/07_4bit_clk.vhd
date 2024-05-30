library IEEE; 
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity counterUp is
  port ( rest, clk : in   std_logic;
                o  : out  std_logic_vector(3 downto 0)
  );
end counterUp

architecture counterUP_1 of counterUp is 
signal o_temp: std_logic_vector(3 downto 0) := "0000";
begin

process (clk)
begin
  if (rising_edge(clk)  then -- clk' event and clk = '1'
    if (rest = '1') then
      o_temp <= "0000";
    elsif (o_temp = "1111") then
      o_temp <= "0000";
    else
      o_temp <= o_temp + '1';
    end if;
  end if;
end process;

  o <= o_temp;
      
end counterUP_1;
