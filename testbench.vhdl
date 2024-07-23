-- testbench.vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbench is
end testbench;

architecture Behavioral of testbench is
    signal a : STD_LOGIC := '0';
    signal b : STD_LOGIC := '0';
    signal y : STD_LOGIC;

    component and_gate
        Port ( a : in  STD_LOGIC;
               b : in  STD_LOGIC;
               y : out  STD_LOGIC);
    end component;

begin
    uut: and_gate Port map (a => a, b => b, y => y);

    stim_proc: process
    begin
        -- Test case 1: a = 0, b = 0
        a <= '0'; b <= '0';
        wait for 10 ns;

        -- Test case 2: a = 0, b = 1
        a <= '0'; b <= '1';
        wait for 10 ns;

        -- Test case 3: a = 1, b = 0
        a <= '1'; b <= '0';
        wait for 10 ns;

        -- Test case 4: a = 1, b = 1
        a <= '1'; b <= '1';
        wait for 10 ns;

        -- Finish simulation
        wait;
    end process;
end Behavioral;