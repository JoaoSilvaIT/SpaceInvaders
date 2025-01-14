library ieee;
use ieee.std_logic_1164.all;

entity ring_buffer_tb is
end ring_buffer_tb;

architecture behavioral of ring_buffer_tb is

	component ring_buffer is
	port (
		clk: in std_logic;
		dataIn: in std_logic_vector(3 downto 0);
		dataAvailable: in std_logic;
		clearToSend: in std_logic;
		clear: in std_logic;
		dataOut: out std_logic_vector(3 downto 0);
		writeReg: out std_logic;
		dataAck: out std_logic
	);
	end component;

	-- UUT signals
	constant MCLK_PERIOD : time := 100 ps;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	-- Component signals
	signal dataIn_tb, dataOut_tb: std_logic_vector(3 downto 0);
	signal clk_tb, dataAvailable_tb, clearToSend_tb, clear_tb, writeReg_tb, dataAck_tb: std_logic;
begin

	-- Unit Under Test
	UUT: ring_buffer
	port map (
		clk => clk_tb,
		dataIn => dataIn_tb,
		dataAvailable => dataAvailable_tb,
		clearToSend => clearToSend_tb,
		clear => clear_tb,
		dataOut => dataOut_tb,
		writeReg => writeReg_tb,
		dataAck => dataAck_tb
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
	
		dataIn_tb <= "0000";
		dataAvailable_tb <= '0';
		clearToSend_tb <= '0';
		clear_tb <= '0';
		wait for MCLK_HALF_PERIOD;
		
		clear_tb <= '1';
		wait for MCLK_PERIOD;
		
		clear_tb <= '0';
		wait for MCLK_PERIOD*2;
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD*5;
		
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		clearToSend_tb <= '1';
		wait for MCLK_PERIOD*5;
		
		clearToSend_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		
		clearToSend_tb <= '1';
		wait for MCLK_PERIOD;
		clearToSend_tb <= '0';
		wait for MCLK_PERIOD*3;
		clearToSend_tb <= '1';
		wait for MCLK_PERIOD;
		clearToSend_tb <= '0';
		wait for MCLK_PERIOD*3;
		clearToSend_tb <= '1';
		wait for MCLK_PERIOD;
		clearToSend_tb <= '0';
		wait for MCLK_PERIOD*3;
		
		
		dataIn_tb <= "1001";
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD;
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD;
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		dataIn_tb <= "0001";
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD;
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD;
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		dataIn_tb <= "0011";
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD;
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD;
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		dataIn_tb <= "1001";
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD;
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		dataIn_tb <= "1101";
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD;
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD;
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		dataIn_tb <= "0000";
		
		dataAvailable_tb <= '1';
		wait for MCLK_PERIOD;
		dataAvailable_tb <= '0';
		wait for MCLK_PERIOD*5;
		
		
	end process;

end behavioral;
