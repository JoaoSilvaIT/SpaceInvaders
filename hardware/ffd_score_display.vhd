-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Project     : Score Display (Space Invaders Game) 
-- Affiliations: DEETC, ISEL - IPL
-- Funding     : -
-------------------------------------------------------------------------------
-- File        : FFD.vhd
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

entity ffd_score_display is
port(	clk : in std_logic;
		reset : in std_logic;
		set : in std_logic;
		d : in std_logic;
		en : in std_logic;
		q : out std_logic
		);
end ffd_score_display;

architecture logicfunction of ffd_score_display is
begin

q <= '0' when reset = '1' else '1' when set = '1' else d when rising_edge(clk) and en = '1';

end logicfunction;