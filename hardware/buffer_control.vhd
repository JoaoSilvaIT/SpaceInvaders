library ieee;
use ieee.std_logic_1164.all;

entity output_buffer_control is
	port(
		clk: in std_logic;
		load: in std_logic;
		ack: in std_logic;
		dataValid: out std_logic;
		bufferFree: out std_logic;
		writeReg: out std_logic
	);
end output_buffer_control;

architecture Behavioral of output_buffer_control is

	type STATE_TYPE is (STATE_FREE, STATE_WRITE, STATE_VALID, STATE_ACK);
	signal CurrentState, NextState : STATE_TYPE;

begin
	
	-- Flip-Flop's 
	CurrentState <= NextState when rising_edge(clk);
	
	-- Generate Next State 
	GenerateNextState: process (CurrentState, load, ack)
	begin
		case CurrentState is
			when STATE_FREE => 
				if (load = '1') then
					NextState <= STATE_WRITE;
				else
					NextState <= STATE_FREE;
				end if;
				
			when STATE_WRITE => 
				NextState <= STATE_VALID;
					
			when STATE_VALID =>
				if (ack = '1') then
					NextState <= STATE_ACK;
				else
					NextState <= STATE_VALID;
				end if;
				
			when STATE_ACK =>
				if (ack = '0') then
					NextState <= STATE_FREE;
				else
					NextState <= STATE_ACK;
				end if;
		end case;
	end process;
	
	bufferFree <= '1' when CurrentState = STATE_FREE else '0';
	writeReg <= '1' when CurrentState = STATE_WRITE else '0';
	dataValid <= '1' when CurrentState = STATE_VALID else '0';
	
end Behavioral;