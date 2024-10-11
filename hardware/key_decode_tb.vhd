library ieee;
use ieee.std_logic_1164.all;

entity key_decode_tb is
end key_decode_tb;

architecture behavioral of key_decode_tb is

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

	-- UUT signals
	constant MCLK_PERIOD : time := 100 ps;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	-- Component signals
	signal rows_tb, K_tb: std_logic_vector(3 downto 0);
	signal columns_tb: std_logic_vector(2 downto 0);
	signal clk_tb, clear_tb, Kack_tb, Kval_tb: std_logic;
begin

	-- Unit Under Test
	UUT: key_decode
	port map (
		clear => clear_tb,
		CLK => clk_tb,
		Kval => Kval_tb,
		rows => rows_tb,
		K => K_tb,
		Kack => Kack_tb,
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
	
		clear_tb <= '0';
		rows_tb <= "1111";
		Kack_tb <= '0';
		wait for MCLK_HALF_PERIOD;
		clear_tb <= '1';
		wait for MCLK_PERIOD;
		clear_tb <= '0';
		wait for MCLK_PERIOD*15;
		rows_tb <= "1101";
		wait for MCLK_PERIOD*2;
		Kack_tb <= '1';
		wait for MCLK_PERIOD*2;
		Kack_tb <= '0';
		wait for MCLK_PERIOD*2;
		rows_tb <= "1111";
		wait for MCLK_PERIOD*2;
		wait;
		
	end process;

end behavioral;
