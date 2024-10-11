library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port (
		S: in std_logic_vector(1 downto 0);
		A: out std_logic_vector(2 downto 0)
	);
end decoder;

architecture Behavioral of decoder is
begin

	A(0) <= not S(1) and not S(0);
	A(1) <= not S(1) and S(0);
	A(2) <= S(1) and not S(0);

end Behavioral;