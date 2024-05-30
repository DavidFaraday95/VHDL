library ieee;
use ieee.std_logic_1164.all;

entity D_FLIPFLOP is 
end D_FLIPFLOP;

  architecture Behavioral_FlipFlop_Mode of D_FLIPFLOP is
    process (clk) -- synchronous
    begin
      if (clk' event and clk = '1') then 
        if (rest = '1') then
          Q = '0';
        else
          Q =  D;
      end if;


--   process (clk,rest) -- (clk, rest) // for asynchronous
--     begin
--       if (rest = '1') then
--         Q <= '0';
--       elsif(clk' event and clk = '1') then
--         Q <= D;
--       end if;

    end process;

end architecture Behavioral_FlipFlop_Mode;
