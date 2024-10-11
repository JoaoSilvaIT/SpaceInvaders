library ieee;
use ieee.std_logic_1164.all;

entity space_invaders is
	port (
		CLK: in std_logic;
		clear: in std_logic;
		rows: in std_logic_vector(3 downto 0);
		coin: in std_logic;
		maintenance: in std_logic;
		columns: out std_logic_vector(2 downto 0);
		lcdEnable: out std_logic;
		lcdData: out std_logic_vector(8 downto 0);
		HEX0	: out std_logic_vector(7 downto 0);
		HEX1	: out std_logic_vector(7 downto 0);
		HEX2	: out std_logic_vector(7 downto 0);
		HEX3	: out std_logic_vector(7 downto 0);
		HEX4	: out std_logic_vector(7 downto 0);
		HEX5	: out std_logic_vector(7 downto 0);
		accept_coin: out std_logic
	);
end space_invaders;

architecture Structural of space_invaders is

	component key_board_reader is
		port(
			CLK: in std_logic;
			ACK: in std_logic;
			clear: in std_logic;
			rows: in std_logic_vector(3 downto 0);
			Dval: out std_logic;
			columns: out std_logic_vector(2 downto 0);
			D: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component lcd_serial_controller is
	port(
		clear: in std_logic;
		clk: in std_logic;
		selLCD: in std_logic;
		sclk: in std_logic;
		sdx: in std_logic;
		wrl: out std_logic;
		dataOut: out std_logic_vector(8 downto 0)
	);
	end component;
	
	component score_serial_controller is
	port(
		clear: in std_logic;
		clk: in std_logic;
		selScore: in std_logic;
		sclk: in std_logic;
		sdx: in std_logic;
		wrd: out std_logic;
		dataOut: out std_logic_vector(6 downto 0)
	);
	end component;
	
	component score_display is
	port(	
		set	: in std_logic;
		cmd	: in std_logic_vector(2 downto 0);
		data	: in std_logic_vector(3 downto 0);
		HEX0	: out std_logic_vector(7 downto 0);
		HEX1	: out std_logic_vector(7 downto 0);
		HEX2	: out std_logic_vector(7 downto 0);
		HEX3	: out std_logic_vector(7 downto 0);
		HEX4	: out std_logic_vector(7 downto 0);
		HEX5	: out std_logic_vector(7 downto 0)
	);
	end component;
	
	component UsbPort is
		port(
			inputPort: in std_logic_vector(7 downto 0);
			outputPort: out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal u_dval, scoreSet : std_logic;
	signal cmd : std_logic_vector(2 downto 0);
	signal u_d, data : std_logic_vector(3 downto 0);
	signal scoreData : std_logic_vector(6 downto 0);
	signal input, output : std_logic_vector(7 downto 0);
	
    component key_decode is
        port(
            clear: in std_logic;
            CLK: in std_logic;
            Kack: in std_logic;
            rows: in std_logic_vector(3 downto 0);
            Kval: out std_logic;
            columns: out std_logic_vector(2 downto 0);
            K: out std_logic_vector(3 downto 0)
        );
    end component;

begin

	U_key_board_reader : key_board_reader
	port map (
		CLK => CLK,
		clear => clear,
		ACK => output(7),
		rows => rows,
		Dval => u_dval,
		columns => columns,
		D => u_d
	);

	input <= maintenance & coin & "0" & u_dval & u_d;
	
	U_usb_port: UsbPort
	port map (
		inputPort => input,
		outputPort => output
	);

	U_lcd_serial_controller: lcd_serial_controller
	port map(
		clear => clear,
		clk => clk,
		selLCD => output(0),
		sclk => output(4),
		sdx => output(3),
		wrl => lcdEnable,
		dataOut => lcdData
	);
	
	U_score_serial_controller: score_serial_controller
	port map(
		clear => clear,
		clk => clk,
		selScore => output(1),
		sclk => output(4),
		sdx => output(3),
		wrd => scoreSet,
		dataOut => scoreData
	);
	
	cmd <= scoreData(2 downto 0);
	data <= scoreData(6 downto 3);
	
	U_score_display: score_display
	port map (
		set => scoreSet,
		cmd => cmd,
		data => data,
		HEX0 => HEX0,
		HEX1 => HEX1,
		HEX2 => HEX2,
		HEX3 => HEX3,
		HEX4 => HEX4,
		HEX5 => HEX5
	);
	
	accept_coin <= output(6);
	
end Structural;