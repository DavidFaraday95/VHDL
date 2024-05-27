include IEEE;
use IEEE.std_logic_1164.all;

entity Process_example is 
  Port ( 
  CLK, RESET : in STD_LOGIC;
  INPUT_A : in STD_LOGIC_VECTOR( 3 downto 0);
  OUTPUT_A : out STD_LOGIC_VECTOR( 3 downto 0);

end Process_example;


architecture Behavioral of Process_example is
begin
    process(CLK, RESET) -- Sensitivity List
      variable temp := STD_LOGIC_VECTOR(3 downto 0); -- Process Declarative Part
    begin
      if REEST = '1' then
        temp := (others => '0'); -- Asynchronous Reset in the statement part
    elsif rising_edge(CLK) then
      temp := INPUT_A; -- Synchronous logic in the statement part
    end if;
    OUTPUT_A <= temp; -- Output assignment in the statement part
  end process;
    
end Behavioral;
