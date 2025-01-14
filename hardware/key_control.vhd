library ieee;
use ieee.std_logic_1164.all;

entity key_control is
	port(
		clear: in std_logic;
		CLK: in std_logic;
		Kpress: in std_logic;
		Kack: in std_logic;
		Kval: out std_logic;
		Kscan: out std_logic
	);
end key_control;

architecture behavioral of key_control is

	type STATE_TYPE is (STATE_SCAN, STATE_VALID, STATE_ACK);
	signal CurrentState, NextState : STATE_TYPE;

begin
	
	-- Flip-Flop's 
	CurrentState <= STATE_SCAN when clear = '1' else NextState when rising_edge(clk);
	
	
	-- Generate Next State 
	GenerateNextState: process (CurrentState, Kpress, Kack)
	begin
		case CurrentState is
			when STATE_SCAN => 
				if (Kpress = '1') then
					NextState <= STATE_VALID;
				else
					NextState <= STATE_SCAN;
				end if;
				
			when STATE_VALID =>
				if (Kpress = '0' and Kack = '1') then
					NextState <= STATE_ACK;
				else
					NextState <= STATE_VALID;
				end if;
					
			when STATE_ACK =>
				if (Kack = '0') then
					NextState <= STATE_SCAN;
				else
					NextState <= STATE_ACK;
				end if;
		end case;
	end process;
	
	--Generate outputs
	Kscan <= '1' when CurrentState = STATE_SCAN else '0';
	Kval <= '1' when CurrentState = STATE_VALID else '0';

end behavioral;