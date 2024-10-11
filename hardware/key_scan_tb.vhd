library ieee;
use ieee.std_logic_1164.all;

entity key_scan_tb is
end key_scan_tb;

architecture behavioral of key_scan_tb is

	component key_scan is
	port(
		CLK: in std_logic;
		R : in std_logic;
		Kscan: in std_logic;
		rows: in std_logic_vector(3 downto 0);
		K: out std_logic_vector(3 downto 0);
		Kpress: out std_logic;
		columns: out std_logic_vector(2 downto 0)	
	);
	end component;

	-- UUT signals
	constant MCLK_PERIOD : time := 100 ps;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	-- Component signals
	signal rows_tb, K_tb: std_logic_vector(3 downto 0);
	signal columns_tb: std_logic_vector(2 downto 0);
	signal clk_tb, R_tb, Kscan_tb, Kpress_tb: std_logic;
begin

	-- Unit Under Test
	UUT: key_scan
	port map (
		CLK => clk_tb,
		R => R_tb,
		Kscan => Kscan_tb,
		rows => rows_tb,
		K => K_tb,
		Kpress => Kpress_tb,
		columns => columns_tb
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
	
		Kscan_tb <= '0';
		rows_tb <= "1111";
		R_tb <= '0';
		wait for MCLK_HALF_PERIOD;
		R_tb <= '1';
		wait for MCLK_PERIOD;
		R_tb <= '0';
		wait for MCLK_PERIOD*2;
		Kscan_tb <= '1';
		wait for MCLK_PERIOD*15;
		rows_tb <= "1101";
		wait for MCLK_PERIOD*3;
		R_tb <= '1';
		wait for MCLK_PERIOD;
		
		wait;
		
	end process;

end behavioral;
