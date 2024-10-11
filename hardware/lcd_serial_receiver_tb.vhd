library ieee;
use ieee.std_logic_1164.all;

entity lcd_serial_receiver_tb is
end lcd_serial_receiver_tb;

architecture behavioral of lcd_serial_receiver_tb is

	component lcd_serial_receiver is
	port(
		clear: in std_logic;
		clk: in std_logic;
		sdx: in std_logic;
		sclk: in std_logic;
		ss: in std_logic;
		accept: in std_logic;
		DXval: out std_logic;
		data: out std_logic_vector(8 downto 0)
	);
	end component;

	-- UUT signals
	constant MCLK_PERIOD : time := 100 ps;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	-- Component signals
	signal clk_tb, sdx_tb, sclk_tb, ss_tb, accept_tb, DXval_tb, clear_tb: std_logic;
	signal data_tb: std_logic_vector(8 downto 0);
begin

	-- Unit Under Test
	UUT: lcd_serial_receiver
	port map (
		clear => clear_tb,
		clk => clk_tb,
		sdx => sdx_tb,
		sclk => sclk_tb,
		ss => ss_tb,
		accept => accept_tb,
		DXval => DXval_tb,
		data => data_tb
	);

	clk_gen : process
	begin
		clk_tb <= '0';
		wait for MCLK_HALF_PERIOD;
		clk_tb <= '1';
		wait for MCLK_HALF_PERIOD;
	end process;
		
		
	stimulus: process 
	begin
	
		clear_tb <= '0';
		sclk_tb <= '0';
		sdx_tb <= '0';
		ss_tb <= '1';
		accept_tb <= '0';
		wait for MCLK_HALF_PERIOD;
		
		clear_tb <= '1';
		wait for MCLK_PERIOD;
		clear_tb <= '0';
		wait for MCLK_PERIOD;
		
		ss_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		--bit 0
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 1
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 2
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 3
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 4
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 5
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 6
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 7
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 8
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 9 (erro de paridade)
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		ss_tb <= '1';
		wait for MCLK_PERIOD*2;
		
		ss_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		--bit 0
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 1
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 2
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 3
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 4
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 5
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 6
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 7
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 8
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		--bit 9 (trama válida)
		sdx_tb <= '1';
		sclk_tb <= '1';
		wait for MCLK_PERIOD;
		sclk_tb <= '0';
		wait for MCLK_PERIOD;
		
		ss_tb <= '1';
		wait for MCLK_PERIOD*2;
		
		accept_tb <= '1';
		wait for MCLK_PERIOD*2;
		accept_tb <= '0';
		
		wait;
		
	end process;

end behavioral;
