LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity FFD is
	port (
		CLK: in std_logic;
		R: in std_logic;
		D: in std_logic;
		E: in std_logic;
		Q: out std_logic
	);
end FFD;

architecture Behavioral of FFD is

begin

	Q <= '0' when R = '1' else D when rising_edge (clk) and E = '1';

end Behavioral;