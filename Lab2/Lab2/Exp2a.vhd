 library ieee;
use ieee.std_logic_1164.all;

entity Exp2a is
    PORT
    (
        SW : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        HEX0, HEX1, HEX2, HEX3: OUT STD_LOGIC_VECTOR(6 downto 0)
    );


end Exp2a;

architecture behavior of Exp2a is
    component decoder_7segment
        port (
            dec_in: in std_logic_vector(3 downto 0);
            dec_out: out std_logic_vector(6 downto 0)
        );
    end component decoder_7segment;
    
begin

    d1: decoder_7segment port map (sw(3 downto 0), hex0);
    d2: decoder_7segment port map (sw(7 downto 4), hex1);
    d3: decoder_7segment port map (sw(11 downto 8), hex2);
    d4: decoder_7segment port map (sw(15 downto 12), hex3);

end behavior;