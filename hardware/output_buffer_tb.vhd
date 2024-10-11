library ieee;
use ieee.std_logic_1164.all;

entity output_buffer_tb is
end output_buffer_tb;

architecture behavioral of output_buffer_tb is

	component output_buffer is
	port (
		clk: in std_logic;
		dataIn: in std_logic_vector(3 downto 0);
		load: in std_logic;
		ack: in std_logic;
		clear: in std_logic;
		dataOut: out std_logic_vector(3 downto 0);
		bufferFree: out std_logic;
		dataValid: out std_logic
	);
	end component;

	-- UUT signals
	constant MCLK_PERIOD : time := 100 ps;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	-- Component signals
	signal dataIn_tb, dataOut_tb: std_logic_vector(3 downto 0);
	signal clk_tb, R_tb, load_tb, ack_tb, clear_tb, bufferFree_tb, dataValid_tb: std_logic;
begin

	-- Unit Under Test
	UUT: output_buffer
	port map (
		CLK => clk_tb,
		dataIn => dataIn_tb,
		load => load_tb,
		ack => ack_tb,
		clear => clear_tb,
		dataOut => dataOut_tb,
		bufferFree => bufferFree_tb,
		dataValid => dataValid_tb
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
	
		dataIn_tb <= "1100";
		load_tb <= '0';
		ack_tb <= '0';
		clear_tb <= '0';
		wait for MCLK_HALF_PERIOD;
		
		clear_tb <= '1';
		wait for MCLK_PERIOD;
		
		clear_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		load_tb <= '1';
		wait for MCLK_PERIOD;
		
		load_tb <= '0';
		wait for MCLK_PERIOD*3;
		
		ack_tb <= '1';
		wait for MCLK_PERIOD*3;
		
		ack_tb <= '0';
		wait for MCLK_PERIOD*3;
		
		
		wait;
		
	end process;

end behavioral;
