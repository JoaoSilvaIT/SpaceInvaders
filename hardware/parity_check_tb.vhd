library ieee;
use ieee.std_logic_1164.all;

entity parity_check_tb is
end parity_check_tb;

architecture behavioral of parity_check_tb is

	component parity_check is
    port (
        data_sdx : in std_logic;
        sclk     : in std_logic;
        init     : in std_logic;
        err      : out std_logic
    );
	end component;

	-- UUT signals
	constant MCLK_PERIOD : time := 100 ps;
	constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
	
	-- Component signals
	signal clk_tb, data_sdx_tb, init_tb, err_tb: std_logic;
begin

	-- Unit Under Test
	UUT: parity_check
	port map (
		data_sdx => data_sdx_tb,
		sclk => clk_tb,
		init => init_tb,
		err => err_tb
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
	
		data_sdx_tb <= '0';
		init_tb <= '0';
		wait for MCLK_HALF_PERIOD;
		init_tb <= '1';
		wait for MCLK_PERIOD;
		init_tb <= '0';
		data_sdx_tb <= '1';
		wait for MCLK_PERIOD;
		data_sdx_tb <= '0';
		wait for MCLK_PERIOD;
		data_sdx_tb <= '0';
		wait for MCLK_PERIOD;
		data_sdx_tb <= '0';
		wait for MCLK_PERIOD;
		data_sdx_tb <= '1';
		wait for MCLK_PERIOD;
		data_sdx_tb <= '0';
		wait for MCLK_PERIOD;
		data_sdx_tb <= '1';
		wait for MCLK_PERIOD;
		data_sdx_tb <= '0';
		wait for MCLK_PERIOD;
		wait;
		
	end process;

end behavioral;
