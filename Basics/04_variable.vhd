library IEEE; 
Use ieee.std_logic_1164.all;
Use ieee.std_logic_arith.all;
Use ieee.std_logic_unsigned.all;

entity counterUp is
  port (rest, clk : in std_logic;
        o : out std_logic_vector (3 downto 0)
        );
  end counterUp
       
architecture counterup_2 of counterUp is 
  variable o_temp_var : std_logic_vector (3 downto 0) := "0000";
begin
   if (clk 'event and clk = '1') then
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

end counterup_2
        
