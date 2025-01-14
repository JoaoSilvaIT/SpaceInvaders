library ieee;
use ieee.std_logic_1164.all;

entity lcd_serial_receiver is 
	port(
		clear: in std_logic;
		clk: in std_logic;
		sdx: in std_logic;
		sclk: in std_logic;
		ss: in std_logic;
		accept: in std_logic;
		DXval: out std_logic;
		data: out std_logic_vector(8 downto 0)
	);
end lcd_serial_receiver;

architecture Structural of lcd_serial_receiver is
	
	component parity_check is
	port (
        data_sdx : in std_logic;
        sclk     : in std_logic;
        init     : in std_logic;
        err      : out std_logic
   );
	end component;
	 
	component counter is
	port(
		CE : in std_logic;
		R : in std_logic;
		CLK : in std_logic;
		Q: out std_logic_vector(3 downto 0)
	);
	end component;

	component shift_reg is
   port (
       data_in: in std_logic;
       sclk: in std_logic;
       enable_shift: in std_logic;
       D: out std_logic_vector(8 downto 0)
   );
	end component;
	
	component comparator is
	port(
		A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
      TC: out std_logic
    );
	 end component;
	 
	 component serial_control is
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
	end component;
	
	signal reset, init, enableShift, pFlag, dFlag, error : std_logic;
	signal count : std_logic_vector(3 downto 0);
	
begin
	
	U_serial_control: serial_control
	port map(clear => clear, clk => clk, enRX => ss, accept => accept, pFlag => pFlag, dFlag => dFlag, RXerror => error, wr => enableShift, init => init, DXval => DXval);
	
	reset <= init or clear;
	
	U_parity_check: parity_check
	port map(data_sdx => sdx, sclk => sclk, init => reset, err => error);
	
	U_counter: counter
	port map(CE => '1', R => init, CLK => sclk, Q => count);
	
	U_comparator_data: comparator
	port map(A => "1001", B => count, TC => dFlag);
	
	U_comparator_parity: comparator
	port map(A => "1010", B => count, TC => pFlag);
	
	U_shift_reg: shift_reg
	port map(data_in => sdx, sclk => sclk, enable_shift => enableShift, D => data);

end Structural;