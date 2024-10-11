library ieee;
use ieee.std_logic_1164.all;

entity counter_tb is
end counter_tb;

architecture behavioral of counter_tb is

	component counter is
	port(
		CE : in std_logic;
		R : in std_logic;
		CLK : in std_logic;
		Q: out std_logic_vector(3 downto 0)
	);
	end component;

	-- UUT signals
	constant MCLK_PERIOD : time := 100 ps;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	-- Component signals
	signal Q_tb: std_logic_vector(3 downto 0);
	signal CE_tb, R_tb, clk_tb: std_logic;
begin

	-- Unit Under Test
	UUT: counter
	port map (
		CE => CE_tb,
		R => R_tb,
		CLK => clk_tb,
		Q => Q_tb
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
		CE_tb <= '0';
		R_tb <= '0';
		
		wait for MCLK_PERIOD;
		R_tb <= '1';
		wait for MCLK_PERIOD;
		R_tb <= '0';
		wait for MCLK_PERIOD;
		CE_tb <= '1';
		wait for MCLK_PERIOD * 30;
		
		R_tb <= '1';
		wait for MCLK_PERIOD;
		R_tb <= '0';
		
		wait;
		
	end process;

end behavioral;
