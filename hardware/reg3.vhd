library ieee;
use ieee.std_logic_1164.all;

entity reg3 is
	port (
		CLK: in std_logic;
		R: in std_logic;
		D: in std_logic_vector(2 downto 0);
		E: in std_logic;
		Q: out std_logic_vector(2 downto 0)
	);
end reg3;

architecture Structural of reg3 is
	
	component ffd
		port (
			CLK: in std_logic;
			R: in std_logic;
			D: IN std_logic;
			E: in std_logic;
			Q: out std_logic
		);
	end component;

begin

	U0: ffd port map(CLK => CLK, D => D(0), E => E, Q => Q(0), R => R);
	U1: ffd port map(CLK => CLK, D => D(1), E => E, Q => Q(1), R => R);
	U2: ffd port map(CLK => CLK, D => D(2), E => E, Q => Q(2), R => R);

end Structural;