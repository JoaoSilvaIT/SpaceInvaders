library ieee;
use ieee.std_logic_1164.all;

entity memory_address_control is
	port (
		clk: in std_logic;
		putGet: in std_logic;
		incPut: in std_logic;
		incGet: in std_logic;
		clear: in std_logic;
		full: out std_logic;
		empty: out std_logic;
		address: out std_logic_vector(2 downto 0)
	);
end memory_address_control;


architecture structural of memory_address_control is

	component reg3 is
		port (
			CLK : in std_logic;
			D : IN std_logic_VECTOR(2 downto 0);
			E : IN std_logic;
			R : in std_logic;
			Q : out std_logic_VECTOR(2 downto 0)
		);
   end component;
	
	component reg is
		port (
			CLK : in std_logic;
			D : IN std_logic_VECTOR(3 downto 0);
			E : IN std_logic;
			R : in std_logic;
			Q : out std_logic_VECTOR(3 downto 0)
		);
   end component;
	
	component adder3 is
		port (
			A: in std_logic_vector(2 downto 0);
			B: in std_logic_vector(2 downto 0);
			Cin : in std_logic;
			S: out std_logic_vector(2 downto 0);
			Cout: out std_logic
		);
	end component;
	
	component adder is
		port (
			A: in std_logic_vector(3 downto 0);
			B: in std_logic_vector(3 downto 0);
			Cin : in std_logic;
			S: out std_logic_vector(3 downto 0);
			Cout: out std_logic
		);
	end component;
	
	component comparator3 is
		port (
			A : in std_logic_vector(2 downto 0);
			B : in std_logic_vector(2 downto 0);
			TC : out std_logic
		);
	end component;
	
	component comparator is
		port (
			A : in std_logic_vector(3 downto 0);
			B : in std_logic_vector(3 downto 0);
			TC : out std_logic
		);
	end component;
	
	signal nextAddress, getAddress, putAddress, size3: std_logic_vector(2 downto 0);
	signal nextSize, size, incOrDec: std_logic_vector(3 downto 0);

begin

	U_nextAddress: adder3
	port map (A => "001", B => getAddress, Cin => '0', S => nextAddress);
	
	U_getAddress: reg3
	port map (CLK => CLK, D => nextAddress, E => incGet, Q => getAddress, R => clear);
	
	incOrDec <= "0001" when incPut = '1' and incGet = '0' else "1111" when incPut = '0' and incGet = '1' else "0000";
	
	U_nextSize: adder
	port map (A => incOrDec, B => size, Cin => '0', S => nextSize);
	
	U_size: reg
	port map (CLK => CLK, D => nextSize, E => '1', Q => size, R => clear);
	
	U_comparator_empty: comparator
	port map (A => size, B => "0000", TC => empty);
	
	U_comparator_full: comparator
	port map (A => size, B => "1000", TC => full);
	
	size3 <= size(2 downto 0);
	
	U_putAddress: adder3
	port map (A => getAddress, B => size3, Cin => '0', S => putAddress);
	
	address <= putAddress when putGet = '1' else getAddress;
	

end structural;