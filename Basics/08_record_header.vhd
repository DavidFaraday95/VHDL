library ieee;
use ieee.std_logicc_1164.all;


package example_record_pkg is

    -- Output from the FIFO
    type t_FROM_FIFO is record
        wr_full     : std_logic;
        rd_empty    : std_logic;
        rd_dv       : std_logic;
        rd_data     : std_logic_vector(7 downto 0);
    end record t_FROM_FIFO;

    -- Input to the FIFO
    type t_to_FIFO is record
        wr_en       : std_logic;
        wr_data     : std_logic_vector(7 downto 0);
        rd_en       : std_logic;
    end record t_to_FIFO;

    -- define the constants, that are used as C-structs/.. records
    constant c_from_FIFO_INIT : t_FROM_FIFO :=  (wr_full     => '0';
                                                 rd_empty    => '1';
                                                 rd_dv       => '0';
                                                 rd_data     => (others => '0'));
                                                 
    constant c_to_FIFO_INIT : t_to_FIFO :=      (wr_en     => '0';
                                                 wr_data    => (others => '0');
                                                 rd_en     => '0');


end package example_record_pkg;