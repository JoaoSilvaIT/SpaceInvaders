library ieee;
use ieee.std_logic_1164.all;

entity key_scan is
	port(
		CLK: in std_logic;
		R : in std_logic;
		Kscan: in std_logic;
		rows: in std_logic_vector(3 downto 0);
		K: out std_logic_vector(3 downto 0);
		Kpress: out std_logic;
		columns: out std_logic_vector(2 downto 0)	
	);
end key_scan;

architecture Structural of key_scan is
	
	component decoder 
		port (
			S: in std_logic_vector(1 downto 0);
			A: out std_logic_vector(2 downto 0)
		);
   end component;
	
	component counter 
		port (
			CE : in std_logic;
			R : in std_logic;
			CLK : in std_logic; 
			Q: out std_logic_vector(3 downto 0)
		);
   end component;
	
	component multiplexor
		port (
			S: in std_logic_vector(1 downto 0);
			A: in std_logic_vector(3 downto 0);
			Y: out std_logic
		);
   end component;
	
	signal counter_out : std_logic_vector(3 downto 0);
	signal decoder_out : std_logic_vector(2 downto 0);
	signal decoder_in, multiplexor_in : std_logic_vector(1 downto 0);
	signal multiplexor_out : std_logic;
	
begin

	U_counter: counter
	port map (
		CE => Kscan,
		CLK => CLK,
		R => R,
		Q => counter_out
	);
	
	decoder_in <= counter_out(3 downto 2);
	
	U_decoder: decoder
	port map (
		S => decoder_in,
		A => decoder_out
	);
	
	columns <= not decoder_out;
	multiplexor_in <= counter_out(1 downto 0);
		
	U_multiplexor: multiplexor
	port map (
		S => multiplexor_in,
		A => rows,
		Y => multiplexor_out
	);
	
	K <= counter_out;
	Kpress <= not multiplexor_out;
	
end Structural;