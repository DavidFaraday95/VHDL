library ieee;
use ieee.std_logic_1164.all;

entity eg_andE_tb is
-- Testbench has no ports.
end eg_andE_tb;

architecture tb of eg_andE_tb is
    -- Component Declaration for the Unit Under Test (UUT)
    component eg_andE
        port( a, b : in  std_logic;
              c     : out std_logic);
    end component;

    -- Inputs
    signal atb, btb : std_logic := '0';
    -- Output
    signal ctb : std_logic;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: eg_andE port map (
        a => atb,
        b => btb,
        c => ctb
    );

    -- Stimulus process to simulate input signals
    stimulus_process: process
    begin
        -- Apply inputs
        atb <= '0'; btb <= '0'; wait for 10 ns;
        atb <= '0'; btb <= '1'; wait for 10 ns;
        atb <= '1'; btb <= '0'; wait for 10 ns;
        atb <= '1'; btb <= '1'; wait for 10 ns;

        -- Wait for a while and then end simulation
        wait for 20 ns;
        wait; -- Wait forever; this will stop the simulation
    end process stimulus_process;

end tb;

