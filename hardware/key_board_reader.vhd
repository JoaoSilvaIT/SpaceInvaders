library ieee;
use ieee.std_logic_1164.all;

entity key_board_reader is
    port (
        CLK: in std_logic;
        ACK: in std_logic;
        clear: in std_logic;
        rows: in std_logic_vector(3 downto 0);
        Dval: out std_logic;
        columns: out std_logic_vector(2 downto 0);
        D: out std_logic_vector(3 downto 0)
    );
end key_board_reader;

architecture Structural of key_board_reader is

    component key_decode is
        port(
            clear: in std_logic;
            CLK: in std_logic;
            Kack: in std_logic;
            rows: in std_logic_vector(3 downto 0);
            Kval: out std_logic;
            columns: out std_logic_vector(2 downto 0);
            K: out std_logic_vector(3 downto 0)
        );
    end component;

    component ring_buffer is 
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
    end component;

    component output_buffer is
        port (
            clk: in std_logic;
            dataIn: in std_logic_vector(3 downto 0);
            load: in std_logic;
            ack: in std_logic;
            clear: in std_logic;
            dataOut: out std_logic_vector(3 downto 0);
            bufferFree: out std_logic;
            dataValid: out std_logic
        );
    end component;

    signal ringAck, decodeValid, bufferFree, load : std_logic;
    signal decodeData, ringData: std_logic_vector(3 downto 0);

begin

    U_key_decode : key_decode
    port map (
        clear => clear,
        CLK => CLK,
        Kack => ringAck,
        rows => rows,
        Kval => decodeValid,
        columns => columns,
        K => decodeData
    );

    U_ring_buffer: ring_buffer
    port map(
        clk => CLK,
        dataIn => decodeData,
        dataAvailable => decodeValid,
        clearToSend => bufferFree,
        clear => clear,
        dataOut => ringData,
        writeReg => load,
        dataAck => ringAck
    );

    U_output_buffer: output_buffer
    port map(
        clk => CLK,
        dataIn => ringData,
        load => load,
        ack => ack,
        clear => clear,
        dataOut => D,
        bufferFree => bufferFree,
        dataValid => Dval
    );

end Structural;