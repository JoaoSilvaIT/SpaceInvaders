library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is
end decoder_tb;

architecture behavioral of decoder_tb is

	component decoder is
	port (
		S: in std_logic_vector(1 downto 0);
		A: out std_logic_vector(2 downto 0)
	);
	end component;

	-- UUT signals
	constant MCLK_PERIOD : time := 100 ps;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	-- Component signals
	signal S_tb: std_logic_vector(1 downto 0);
	signal A_tb: std_logic_vector(2 downto 0);
	signal clk_tb: std_logic;
	
begin

	-- Unit Under Test
	UUT: decoder
	port map (
		A => A_tb,
		S => S_tb
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
	
		S_tb <= "00";
		wait for MCLK_PERIOD;
		S_tb <= "01";
		wait for MCLK_PERIOD;
		S_tb <= "10";
		wait for MCLK_PERIOD;
		S_tb <= "11";
		wait for MCLK_PERIOD;
		wait;
		
	end process;

end behavioral;