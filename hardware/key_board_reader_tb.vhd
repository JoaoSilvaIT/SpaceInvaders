library ieee;
use ieee.std_logic_1164.all;

entity key_board_reader_tb is
end key_board_reader_tb;

architecture behavioral of key_board_reader_tb is

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

	-- UUT signals
	constant MCLK_PERIOD : time := 20 ns;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	signal CLK_tb, Kack_tb, Kval_tb, clear_tb : std_logic;
	signal rows_tb, K_tb : std_logic_vector(3 downto 0);
	signal columns_tb : std_logic_vector(2 downto 0);
	
begin

	-- Unit Under Test
	UUT: key_board_reader
	port map (
		clear => clear_tb,
		CLK => CLK_tb,
		ACK => Kack_tb,
		rows => rows_tb,
		D => K_tb,
		Dval => Kval_tb,
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
		wait for MCLK_PERIOD*10;
		Kack_tb <= '1';
		wait for MCLK_PERIOD*2;
		Kack_tb <= '0';
		wait for MCLK_PERIOD*2;
		rows_tb <= "1111";
		wait for MCLK_PERIOD*2;
		wait;
		
	end process;

end behavioral;