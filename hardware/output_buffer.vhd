library ieee;
use ieee.std_logic_1164.all;

entity output_buffer is
	port (
		clk: in std_logic;
		dataIn: in std_logic_vector(3 downto 0);
		load: in std_logic;
		ack: in std_logic;
		clear: in std_logic;
		dataOut: out std_logic_vector(3 downto 0);
		bufferFree: out std_logic;
		dataValid: out std_logic
	);
end output_buffer;

architecture Structural of output_buffer is

	component reg is
		port (
			CLK: in std_logic;
			R: in std_logic;
			D: in std_logic_vector(3 downto 0);
			E: in std_logic;
			Q: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component output_buffer_control is
		port(
			clk: in std_logic;
			load: in std_logic;
			ack: in std_logic;
			dataValid: out std_logic;
			bufferFree: out std_logic;
			writeReg: out std_logic
		);
	end component;
	
	signal writeReg: std_logic;
	
begin

	U_reg: reg
	port map(CLK => writeReg, R => clear, D => dataIn, E => '1', Q => dataOut);
	
	U_output_buffer_control: output_buffer_control
	port map(clk => clk, load => load, ack => ack, dataValid => dataValid, bufferFree => bufferFree, writeReg => writeReg);

end Structural;