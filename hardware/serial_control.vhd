library ieee;
use ieee.std_logic_1164.all;

entity serial_control is
	port(
		clear: in std_logic;
		clk: in std_logic;
		enRX: in std_logic;
		accept: in std_logic;
		pFlag: in std_logic;
		dFlag: in std_logic;
		RXerror: in std_logic;
		wr: out std_logic;
		init: out std_logic;
		DXval: out std_logic
	);
end serial_control;

architecture Behavioral of serial_control is

	type STATE_TYPE is (STATE_INIT, STATE_DATA, STATE_PARITY, STATE_VALID);
	signal CurrentState, NextState : STATE_TYPE;

begin
	
	-- Flip-Flop's 
	CurrentState <= STATE_INIT when clear = '1' else NextState when rising_edge(clk);
	
	-- Generate Next State 
	GenerateNextState: process (CurrentState, enRX, dFlag, pFlag, RXerror, accept)
	begin
		case CurrentState is
			when STATE_INIT => 
				if (enRX = '0') then
					NextState <= STATE_DATA;
				else
					NextState <= STATE_INIT;
				end if;
				
			when STATE_DATA => 
				if (enRX = '1') then
					NextState <= STATE_INIT;
				elsif (dFlag = '1') then
					NextState <= STATE_PARITY;
				else
					NextState <= STATE_DATA;
				end if;
				
			when STATE_PARITY => 
				if (pFlag = '1') then
					if (RXerror = '1') then
						NextState <= STATE_INIT;
					else
						NextState <= STATE_VALID;
					end if;
				else
					NextState <= STATE_PARITY;
				end if;
				
			when STATE_VALID => 
				if (accept = '1') then
					NextState <= STATE_INIT;
				else
					NextState <= STATE_VALID;
				end if;
					
		end case;
	end process;
	
	init <= '1' when CurrentState = STATE_INIT and enRX = '0' else '0';
	wr <= '1' when CurrentState = STATE_DATA else '0';
	DXval <= '1' when CurrentState = STATE_VALID else '0';
	
end Behavioral;