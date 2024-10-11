Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity clk_div is
generic(div: natural := 10000);
port ( clk_in: in std_logic;
		 clk_out: out std_logic);
end clk_div;
  
architecture bhv of clk_div is
  
signal count: integer:=1;
signal tmp : std_logic := '0';
	
begin

process(clk_in)
begin

	if(clk_in'event and clk_in='1') then
		count <=count+1;
		if (count = div/2) then
			tmp <= NOT tmp;
			count <= 1;
		end if;
	end if;
end process;

clk_out <= tmp;

End bhv;