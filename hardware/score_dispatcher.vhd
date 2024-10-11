library ieee;
use ieee.std_logic_1164.all;

entity score_dispatcher is
	port(
		clear: in std_logic;
		clk: in std_logic;
		dataValid: in std_logic;
		dataIn: in std_logic_vector(6 downto 0);
		wrd: out std_logic;
		done: out std_logic;
		dataOut: out std_logic_vector(6 downto 0)
	);
end score_dispatcher;

architecture Behavioral of score_dispatcher is

	type STATE_TYPE is (STATE_IDLE, STATE_WRITE);
	signal CurrentState, NextState : STATE_TYPE;
	
begin

	-- Flip-Flop's 
	CurrentState <= STATE_IDLE when clear = '1' else NextState when rising_edge(clk);

		-- Generate Next State 
	GenerateNextState: process (CurrentState, dataValid)
	begin
		case CurrentState is
			when STATE_IDLE => 
				if (dataValid = '1') then
					NextState <= STATE_WRITE;
				else
					NextState <= STATE_IDLE;
				end if;
				
			when STATE_WRITE =>
				if (dataValid = '0') then
					NextState <= STATE_IDLE;
				else
					NextState <= STATE_WRITE;
				end if;
					
		end case;
	end process;
	
	dataOut <= dataIn;
	wrd <= '1' when CurrentState = STATE_IDLE and NextState = STATE_WRITE else '0';
	done <= '1' when CurrentState = STATE_WRITE else '0';

end Behavioral;