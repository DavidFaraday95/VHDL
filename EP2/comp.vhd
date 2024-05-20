library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std_unsigned.all;

entity comp is 
  port (
    clk_i   : in std_logic;
    sw_i    : in std_logic_vector (7 downto 0);

    vga_hs_o : out std_logic;
    vga_vs_o : out std_logic;
    vga_col_o : out std_logic_vector(7 downto 0);
  );
  end comp;


  architecture structural of comp is
    -- Clock Divider for VGA

    signal vga_cnt : std_logic_vector (1 downto 0 ) := (others => '0');
    signal vga_clk : std_logic;

  begin

    vga_cnt_proc : process(clk_i )
    begin
      if rising_edge(clk_i) then
        vga_cnt <= vga_cnt + 1;
      end if;
    end process vga_cnt_proc;

  vga_clk <= vga_cnt(1);

   --------------------------------------------------
   -- Instantiate VGA module
   --------------------------------------------------

  vga_inst : entity work.vga
    port map(
      clk_i = vga_clk,
      digits_i => sw_i,
      vga_hs_o => vga_hs_o,
      vga_vs_o => vga_vs_o,
      vga_col_o => vga_col_o,
    ) -- vga_inst

end architecture structural;
