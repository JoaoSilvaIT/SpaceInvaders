-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Project     : Score Display (Space Invaders Game) 
-- Affiliations: DEETC, ISEL - IPL
-- Funding     : -
-------------------------------------------------------------------------------
-- File        : scoreDisplay.vhd
-- Author(s)   : Pedro Miguens Matutino
-- Date        : 2024/02/16
-------------------------------------------------------------------------------
-- Copyright (c) 2024 Pedro Miguens Matutino
-------------------------------------------------------------------------------
-- Description :
-- .
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity score_display is
port(	set	: in std_logic;
		cmd	: in std_logic_vector(2 downto 0);
		data	: in std_logic_vector(3 downto 0);
		HEX0	: out std_logic_vector(7 downto 0);
		HEX1	: out std_logic_vector(7 downto 0);
		HEX2	: out std_logic_vector(7 downto 0);
		HEX3	: out std_logic_vector(7 downto 0);
		HEX4	: out std_logic_vector(7 downto 0);
		HEX5	: out std_logic_vector(7 downto 0)
		);
end score_display;

architecture structural of score_display is

component reg is
	port (
		CLK: in std_logic;
		R: in std_logic;
		D: in std_logic_vector(3 downto 0);
		E: in std_logic;
		Q: out std_logic_vector(3 downto 0)
	);
end component;

component ffd_score_display is
	port(	clk : in std_logic;
		reset : in std_logic;
		set : in std_logic;
		d : in std_logic;
		en : in std_logic;
		q : out std_logic
	);
end component;

component dec2hex is
	port(	d : in std_logic_vector(3 downto 0);
		clear : in std_logic;
		dout: out std_logic_vector(7 downto 0)
	);
end component;

component dec_3_8 is
	port( addr 	: 	in std_logic_vector(2 downto 0);
		en		:	in std_logic;
		dout	: 	out std_logic_vector(7 downto 0)
	);
end component;

type register_array is array (0 to 5) of std_logic_vector(3 downto 0);
signal reg_values, out_values : register_array;
type seg_array is array (0 to 5) of std_logic_vector(7 downto 0);
signal display_values : seg_array;
signal en_digit : std_logic_vector(7 downto 0);
signal clear : std_logic;
begin

decoder : dec_3_8 port map(addr => cmd, en => '1', dout => en_digit);

circuit_gen : for ii in 0 to 5 generate
	in_reg		: reg port map (clk => set, R => '0', D => data, E => en_digit(ii), Q => reg_values(ii));
	out_reg		: reg port map (clk => set, R => '0', D => reg_values(ii), E => en_digit(6), Q => out_values(ii));
	hex_digit	: dec2hex	port map(d => out_values(ii),clear => clear, dOut => display_values(ii));
end generate circuit_gen;

clear_reg: ffd_score_display port map ( clk => set, reset => '0' , set => '0', en => en_digit(7), d => data(0), Q => clear);

HEX0 <= display_values(0);
HEX1 <= display_values(1);
HEX2 <= display_values(2);
HEX3 <= display_values(3);
HEX4 <= display_values(4);
HEX5 <= display_values(5);

end structural;