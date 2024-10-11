library ieee;
use ieee.std_logic_1164.all;

entity ring_buffer is
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
end ring_buffer;

architecture Structural of ring_buffer is
	
	component ring_buffer_control is
		port(
			clear: in std_logic;
			clk: in std_logic;
			dataAvailable: in std_logic;
			clearToSend: in std_logic;
			full: in std_logic;
			empty: in std_logic;
			writeRam: out std_logic;
			putGet: out std_logic;
			incPut: out std_logic;
			incGet: out std_logic;
			writeReg: out std_logic;
			dataAck: out std_logic
		);
	end component;
	
	component ram is
		generic(
			ADDRESS_WIDTH : natural := 3;
			DATA_WIDTH : natural := 4
		);
		port(
			address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
			wr: in std_logic;
			din: in std_logic_vector(DATA_WIDTH - 1 downto 0);
			dout: out std_logic_vector(DATA_WIDTH - 1 downto 0)
		);
	end component;
	
	component memory_address_control is
		port (
			clk: in std_logic;
			putGet: in std_logic;
			incPut: in std_logic;
			incGet: in std_logic;
			clear: in std_logic;
			full: out std_logic;
			empty: out std_logic;
			address: out std_logic_vector(2 downto 0)
		);
	end component;
	
	signal putGet, incPut, incGet, full, empty, writeRam : std_logic;
	signal address : std_logic_vector(2 downto 0);
	
begin
	
	U_ring_buffer_control: ring_buffer_control
	port map(clear => clear, clk => clk, dataAvailable => dataAvailable, clearToSend => clearToSend, full => full, empty => empty, writeRam => writeRam, putGet => putGet, incPut => incPut, incGet => incGet, writeReg => writeReg, dataAck => dataAck);
	
	U_ram: ram
	port map(address => address, wr => writeRam, din => dataIn, dout => dataOut);
	
	U_memory_address_control: memory_address_control
	port map(clk => clk, putGet => putGet, incPut => incPut, incGet => incGet, clear => clear, full => full, empty => empty, address => address);

end Structural;