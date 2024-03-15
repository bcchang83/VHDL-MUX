-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 15.3.2024 06:18:33 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_mux is
end tb_mux;

architecture tb of tb_mux is

    component mux
        port (a   : in std_logic_vector (7 downto 0);
              b   : in std_logic_vector (7 downto 0);
              sel : in std_logic_vector (1 downto 0);
              c   : out std_logic_vector (7 downto 0));
    end component;

    signal a   : std_logic_vector (7 downto 0);
    signal b   : std_logic_vector (7 downto 0);
    signal sel : std_logic_vector (1 downto 0);
    signal c   : std_logic_vector (7 downto 0);

begin

    dut : mux
    port map (a   => a,
              b   => b,
              sel => sel,
              c   => c);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        a <= "00000001";
        b <= (others => '0');
        sel <= (others => '0');
		wait for 10 ns;
        a <= "00000001";
        b <= (others => '0');
        sel <= "01";
		wait for 10 ns;
        a <= "00000000";
        b <= "00000011";
        sel <= "10";
		wait for 10 ns;
        a <= "00000000";
        b <= "00000011";
        sel <= "11";
		wait for 10 ns;
        a <= "00000111";
        b <= (others => '0');
        sel <= "01";
		wait for 10 ns;
        a <= (others => '0');
        b <= "11100000";
        sel <= "10";
		wait for 10 ns;
        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_mux of tb_mux is
    for tb
    end for;
end cfg_tb_mux;
