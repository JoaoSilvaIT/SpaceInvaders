library ieee;
use ieee.std_logic_1164.all;

entity key_decode is
	port(
		clear: in std_logic;
		CLK: in std_logic;
		Kack: in std_logic;
		rows: in std_logic_vector(3 downto 0);
		Kval: out std_logic;
		columns: out std_logic_vector(2 downto 0);
		K: out std_logic_vector(3 downto 0)
	);
end key_decode;

architecture Structural of key_decode is

	component key_scan is
		port(
			CLK: in std_logic;
			R: in std_logic;
			Kscan: in std_logic;
			rows: in std_logic_vector(3 downto 0);
			K: out std_logic_vector(3 downto 0);
			Kpress: out std_logic;
			columns: out std_logic_vector(2 downto 0)
		);
	end component;

	component key_control is
		port(
			clear: in std_logic;
			CLK: in std_logic;
			Kpress: in std_logic;
			Kack: in std_logic;
			Kval: out std_logic;
			Kscan: out std_logic
		);
	end component;
	
	component clk_div is
		generic(div: natural := 10000);
		port (
			clk_in: in std_logic;
			clk_out: out std_logic
		);
	end component;
	
	signal k_press, k_scan, R, div_clk, not_div_clk : std_logic;

begin

	U_clk_div: clk_div
	port map(
		clk_in => clk,
		clk_out => div_clk
	);

	U_key_scan: key_scan
	port map (
		CLK => div_clk, --div_clk
		R => clear,
		Kscan => k_scan,
		rows => rows,
		K => K,
		Kpress => k_press,
		columns => columns
	);
	
	not_div_clk <= not div_clk;
	
	U_key_control: key_control
	port map (
		clear => clear,
		CLK => not_div_clk,
		Kpress => k_press,
		Kack => Kack,
		Kval => Kval,
		Kscan => k_scan
	);

end Structural;