library ieee;
use ieee.std_logic_1164.all;

entity lcd_serial_controller is
	port(
		clk: in std_logic;
		selLCD: in std_logic;
		sclk: in std_logic;
		sdx: in std_logic;
		wrl: out std_logic;
		dataOut: out std_logic_vector(8 downto 0)
	);
end lcd_serial_controller;

architecture Structural of lcd_serial_controller is

	component lcd_dispatcher is
	port(
		clk: in std_logic;
		dataValid: in std_logic;
		dataIn: in std_logic_vector(8 downto 0);
		wrl: out std_logic;
		done: out std_logic;
		dataOut: out std_logic_vector(8 downto 0)
	);
	end component;
	
	component lcd_serial_receiver is
	port(
		sdx: in std_logic;
		sclk: in std_logic;
		ss: in std_logic;
		accept: in std_logic;
		DXval: out std_logic;
		data: out std_logic_vector(8 downto 0)
	);
	end component;
	
	signal dataValid, done: std_logic;
	signal data : std_logic_vector(8 downto 0);

begin

	U_lcd_dispatcher: lcd_dispatcher
	port map(clk => clk, dataValid => dataValid, dataIn => data, wrl => wrl, done => done, dataOut => dataOut);
	
	U_serial_receiver: lcd_serial_receiver
	port map(sdx => sdx, sclk => sclk, ss => selLCD, accept => done, DXval => dataValid, data => data);

end Structural;