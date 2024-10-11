library ieee;
use ieee.std_logic_1164.all;

entity shift_reg_7 is
    port (
        data_in: in std_logic;
        sclk: in std_logic;
        enable_shift: in std_logic;
        D: out std_logic_vector(6 downto 0)
    );
end shift_reg_7;

architecture behavioral of shift_reg_7 is

    signal shift_register: std_logic_vector(6 downto 0);

begin

    process (sclk)
    begin
        if rising_edge(sclk) then
            if enable_shift = '1' then
                shift_register <= data_in & shift_register(6 downto 1);
            end if;
        end if;
    end process;

    D <= shift_register;

end behavioral;