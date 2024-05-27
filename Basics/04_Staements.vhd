Library ieee;
use ieee.std_logic_1164.all;

entity mux is 
  port (a,b,c ,d : IN std_logic;
        sel  : IN STD_LOGIC_VECTOR (1 downto 0 );
        y_mux1, y_mux2, y_mux3, y_mux4    : OUT STD_LOGIC);

architecture mux_implementation of mux is
BEGIN
// 1. WHEN sel ELSE Statement

    y_mux1 <= a WHEN sel = "00" ELSE
              b WHEN sel = "01" ELSE
              c WHEN sel = "10" ELSE
              d;

// 2. WITH sel SELECT Statement          
  
    WITH sel SELECT
    y_mux2 <= a when "00",
              b when "01",
              c when "10",
              d when others;

      
// 3. IF Statements
  
    if sel(2) = '1' then
      y_mux3 <= a;
    elsif sel(1) = '1' then
      y_mux3 <= b;
    elsif sel(0) = '1' then
      y_mux3 <= c;
    else 
      y_mux3 <= d;

  
// 4. Case Statements

  case sel is 
    when "00" => y_mux4 <= a;
    when "01" => y_mux4 <= b;
    when "10" => y_mux4 <= c;
    when others => y_mux4 <= d;
  
END mux_implementation;
