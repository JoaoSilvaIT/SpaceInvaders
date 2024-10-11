LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity adder is
	port (
		A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		Cin : in std_logic;
		S: out std_logic_vector(3 downto 0);
		Cout: out std_logic
	);
end adder;

architecture Structural of adder is

	component full_adder
		port (
			A: in std_logic;
			B: in std_logic;
			Cin: in std_logic;
			R: out std_logic;
			Cout: out std_logic
		);
	end component;

	signal carry : std_logic_vector(3 downto 1);

begin

	U0:	full_adder
			port map (A => A(0), B=>B(0), Cin => Cin, R=> S(0), Cout => carry(1));
			
	U1: 	full_adder
			port map (A => A(1), B=>B(1), Cin => carry(1), R=> S(1), Cout => carry(2));
			
	U2: 	full_adder
			port map (A => A(2), B=>B(2), Cin => carry(2), R=> S(2), Cout => carry(3));
			
	U3: 	full_adder
			port map (A => A(3), B=>B(3), Cin => carry(3), R=> S(3), Cout => Cout);

end Structural;