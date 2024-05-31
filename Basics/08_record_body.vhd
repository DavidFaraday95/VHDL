library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.example_record_pkg.all; -- Using the Package with record

entity example_record is 
    port (
        i_clk : in std_logic;
        i_fifo: in t_FROM_FIFO;
        o_fifo: out t_to_FIFO := c_to_FIFO_INIT;
    );

end example_record;


architecture behave of example_record is

    signal r_WR_DATA : unsigned (7 downto 0) := (others => '0');

    begin

    p_FIFO_WR : process (i_clk) is 
    begin
        if rising_edge (i_clk) then
            if  i_fifo.wr_full = '0' then           --   Reuse the record like a struct in C
                o_fifo.wr_en <= '1';
                o_fifo.wr_data <= std_logic_vector(r_WR_DATA + 1);
            end if;
        end if;   
    end process p_FIFO_WR;

    -- Handle reads from the FIFO
    p_FIFO_RD : process (i_clk) is 
    begin
        if rising_edge (i_clk) then
            if  i_fifo.rd_empty = '0' then
                o_fifo.rd_en <= '1';
            end if;
        end if;   
    end process p_FIFO_RD;

end behave;