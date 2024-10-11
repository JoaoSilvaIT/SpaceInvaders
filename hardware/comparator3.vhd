LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity comparator3 is
    port(
		A: in std_logic_vector(2 downto 0);
		B: in std_logic_vector(2 downto 0);
      TC: out std_logic
    );
end comparator3;

architecture Behavioral of comparator3 is

begin

 TC <= (A(0) xnor B(0)) and (A(1) xnor B(1)) and (A(2) xnor B(2));
 
end Behavioral;