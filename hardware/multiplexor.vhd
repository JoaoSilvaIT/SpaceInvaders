library ieee;
use ieee.std_logic_1164.all;

entity multiplexor is
	port (
		S: in std_logic_vector(1 downto 0);
		A: in std_logic_vector(3 downto 0);
		Y: out std_logic
	);
end multiplexor;

architecture Behavioral of multiplexor is
begin

	Y <= (not S(0) and not S(1) and A(0)) or (not S(1) and S(0) and A(1)) or (S(1) and not S(0) and A(2)) or (S(1) and S(0) and A(3));

end Behavioral;