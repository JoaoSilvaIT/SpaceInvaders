library ieee;
use ieee.std_logic_1164.all;

entity parity_check is
    port (
        data_sdx : in std_logic;
        sclk     : in std_logic;
        init     : in std_logic;
        err      : out std_logic
    );
end parity_check;

architecture Structural of parity_check is

    signal newParity, parity : std_logic;
	 
begin

	newParity <= parity xor data_sdx;
	parity <= '0' when init = '1' else newParity when rising_edge(sclk);
	err <= parity;

end Structural;