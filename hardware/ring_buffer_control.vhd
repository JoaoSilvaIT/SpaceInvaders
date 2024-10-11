library ieee;
use ieee.std_logic_1164.all;

entity ring_buffer_control is
	port(
		clear: in std_logic;
		clk: in std_logic;
		dataAvailable: in std_logic;
		clearToSend: in std_logic;
		full: in std_logic;
		empty: in std_logic;
		writeRam: out std_logic;
		incPut: out std_logic;
		incGet: out std_logic;
		putGet: out std_logic;
		writeReg: out std_logic;
		dataAck: out std_logic
	);
end ring_buffer_control;

architecture Behavioral of ring_buffer_control is

	type STATE_TYPE is (STATE_IDLE, STATE_PUT, STATE_PUT_INC, STATE_PUT_ACK, STATE_READ, STATE_GET_INC);
	signal CurrentState, NextState : STATE_TYPE;

begin
	
	-- Flip-Flop's 
	CurrentState <= NextState when rising_edge(clk);
	
	-- Generate Next State 
	GenerateNextState: process (CurrentState, dataAvailable, clearToSend, full, empty)
	begin
		case CurrentState is
			when STATE_IDLE => 
				if (dataAvailable = '1' and (empty = '1' or (empty = '0' and clearToSend = '0' and full = '0'))) then
					NextState <= STATE_PUT;
				elsif (empty = '0' and clearToSend = '1') then
					NextState <= STATE_READ;
				else
					NextState <= STATE_IDLE;
				end if;
				
			when STATE_PUT =>
				NextState <= STATE_PUT_INC;
				
			when STATE_PUT_INC =>
				NextState <= STATE_PUT_ACK;
				
			when STATE_PUT_ACK =>
				if (dataAvailable = '0') then
					NextState <= STATE_IDLE;
				else
					NextState <= STATE_PUT_ACK;
				end if;
				
			when STATE_READ =>
				NextState <= STATE_GET_INC;
				
			when STATE_GET_INC =>
				NextState <= STATE_IDLE;
				
		end case;
	end process;
	
	--Generate outputs
	writeRam <= '1' when CurrentState = STATE_PUT and NextState = STATE_PUT_INC else '0';
	putGet <= '1' when CurrentState = STATE_PUT or NextState = STATE_PUT else '0';
	incPut <= '1' when CurrentState = STATE_PUT_INC else '0';
	dataAck <= '1' when CurrentState = STATE_PUT_ACK else '0';
	writeReg <= '1' when CurrentState = STATE_READ else '0';
	incGet <= '1' when CurrentState = STATE_GET_INC else '0';
	
end Behavioral;