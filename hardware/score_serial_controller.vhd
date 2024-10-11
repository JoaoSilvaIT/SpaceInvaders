library ieee;
use ieee.std_logic_1164.all;

entity score_serial_controller is
	port(
		clear: in std_logic;
		clk: in std_logic;
		selScore: in std_logic;
		sclk: in std_logic;
		sdx: in std_logic;
		wrd: out std_logic;
		dataOut: out std_logic_vector(6 downto 0)
	);
end score_serial_controller;

architecture Structural of score_serial_controller is

	component score_dispatcher is
	port(
		clk: in std_logic;
		dataValid: in std_logic;
		dataIn: in std_logic_vector(6 downto 0);
		wrd: out std_logic;
		done: out std_logic;
		dataOut: out std_logic_vector(6 downto 0)
	);
	end component;
	
	component score_serial_receiver is
	port(
		clear: in std_logic;
		clk: in std_logic;
		sdx: in std_logic;
		sclk: in std_logic;
		ss: in std_logic;
		accept: in std_logic;
		DXval: out std_logic;
		data: out std_logic_vector(6 downto 0)
	);
	end component;
	
	signal dataValid, done: std_logic;
	signal data : std_logic_vector(6 downto 0);

begin

	U_score_dispatcher: score_dispatcher
	port map(clk => clk, dataValid => dataValid, dataIn => data, wrd => wrd, done => done, dataOut => dataOut);
	
	U_score_serial_receiver: score_serial_receiver
	port map(clear => clear, clk => clk, sdx => sdx, sclk => sclk, ss => selScore, accept => done, DXval => dataValid, data => data);

end Structural;