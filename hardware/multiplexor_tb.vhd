library ieee;
use ieee.std_logic_1164.all;

entity multiplexor_tb is
end multiplexor_tb;

architecture behavioral of multiplexor_tb is

	component multiplexor is
	port (
		S: in std_logic_vector(1 downto 0);
		A: in std_logic_vector(3 downto 0);
		Y: out std_logic
	);
	end component;

	-- UUT signals
	constant MCLK_PERIOD : time := 100 ps;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	-- Component signals
	signal S_tb: std_logic_vector(1 downto 0);
	signal A_tb: std_logic_vector(3 downto 0);
	signal Y_tb, clk_tb: std_logic;
begin

	-- Unit Under Test
	UUT: multiplexor
	port map (
		A => A_tb,
		S => S_tb,
		Y => Y_tb
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
	
		A_tb <= "0000";
		
		S_tb <= "00";
		wait for MCLK_PERIOD;
		S_tb <= "01";
		wait for MCLK_PERIOD;
		S_tb <= "10";
		wait for MCLK_PERIOD;
		S_tb <= "11";
		wait for MCLK_PERIOD;
		
		A_tb <= "0001";
		
		S_tb <= "00";
		wait for MCLK_PERIOD;
		S_tb <= "01";
		wait for MCLK_PERIOD;
		S_tb <= "10";
		wait for MCLK_PERIOD;
		S_tb <= "11";
		wait for MCLK_PERIOD;
		
		A_tb <= "0010";
		
		S_tb <= "00";
		wait for MCLK_PERIOD;
		S_tb <= "01";
		wait for MCLK_PERIOD;
		S_tb <= "10";
		wait for MCLK_PERIOD;
		S_tb <= "11";
		wait for MCLK_PERIOD;
		
		A_tb <= "0100";
		
		S_tb <= "00";
		wait for MCLK_PERIOD;
		S_tb <= "01";
		wait for MCLK_PERIOD;
		S_tb <= "10";
		wait for MCLK_PERIOD;
		S_tb <= "11";
		wait for MCLK_PERIOD;
		
		
		A_tb <= "1000";
		
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