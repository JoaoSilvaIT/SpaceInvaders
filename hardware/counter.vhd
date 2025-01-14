LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity counter is
	port(
		CE : in std_logic;
		R : in std_logic;
		CLK : in std_logic;
		Q: out std_logic_vector(3 downto 0)
	);
end counter;

architecture Structural of counter is

	component reg 
		port (
			CLK : in std_logic;
			D : IN std_logic_VECTOR(3 downto 0);
			E : IN std_logic;
			R : in std_logic;
			Q : out std_logic_VECTOR(3 downto 0)
		);
   end component;
	
	component adder
		port (
			A: in std_logic_vector(3 downto 0);
			B: in std_logic_vector(3 downto 0);
			Cin : in std_logic;
			S: out std_logic_vector(3 downto 0);
			Cout: out std_logic
		);
	end component;
	
	component comparator
		port (
			A : in std_logic_vector(3 downto 0);
			B : in std_logic_vector(3 downto 0);
			TC : out std_logic
		);
	end component;

	signal reg_out, sum_out : std_logic_vector(3 downto 0);
	signal reset, TC : std_logic;
	
begin

	U_adder: adder
	port map (A => "0001", B => reg_out, Cin => '0', S => sum_out);
	
	U_comparator : comparator
	port map (A => "1101", B => sum_out, TC => TC);
	
	reset <= TC or R;

	U_reg: reg
	port map (CLK => CLK, D => sum_out, E => CE, Q => reg_out, R => reset);
	
	Q <= reg_out;
		

end Structural;