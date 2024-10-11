LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

entity full_adder is
	port (
		A: in std_logic;
		B: in std_logic;
		Cin: in std_logic;
		R: out std_logic;
		Cout: out std_logic
	);
end full_adder;

architecture Behavioral of full_adder is

begin

R <= A xor B xor Cin;
Cout <= (A and B) or ((A xor B) and Cin);

end Behavioral;