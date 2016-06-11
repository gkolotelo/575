library ieee;
use ieee.std_logic_1164.all;


entity seg7_scroll is
    port(Seg7Addr: in std_logic_vector(2 downto 0);
         Seg7Data: in std_logic_vector(6 downto 0);
         Seg7AddrEn: in std_logic;
         Clock: in std_logic;
         Resetn: in std_logic;
         H0: out std_logic_vector(6 downto 0);
         H1: out std_logic_vector(6 downto 0);
         H2: out std_logic_vector(6 downto 0);
         H3: out std_logic_vector(6 downto 0);
         H4: out std_logic_vector(6 downto 0);
         H5: out std_logic_vector(6 downto 0);
         H6: out std_logic_vector(6 downto 0);
         H7: out std_logic_vector(6 downto 0)
    );
end seg7_scroll;

architecture behavior of seg7_scroll is
    -- Register n-bits
    component regn
        generic (n : integer := 16);
        port (  R : IN std_logic_vector(n-1 downto 0);
                Rin, Clock, Rstn : IN std_logic;
                Q : buffer std_logic_vector(n-1 downto 0));
    end component regn;
component dec3to8 is
    port (  W : in std_logic_vector(2 downto 0);
            En : in std_logic;
            Y : out std_logic_vector(7 downto 0));
end component dec3to8;
signal HEn: std_logic_vector(7 downto 0);
begin
    
--       Seg7AddrEn
--           |
--  addr->decoder
--    _______|________
--   /  /  / |  \  \  \  
--  H1 H2 H3 H4 H5 H6 H7

dec: dec3to8 port map(Seg7Addr, Seg7AddrEn, HEn);

H0_disp: regn generic map (n => 7)
         port map (Seg7Data, HEn(7), Clock, Resetn, H0);
H1_disp: regn generic map (n => 7)
         port map (Seg7Data, HEn(6), Clock, Resetn, H1);
H2_disp: regn generic map (n => 7)
         port map (Seg7Data, HEn(5), Clock, Resetn, H2);
H3_disp: regn generic map (n => 7)
         port map (Seg7Data, HEn(4), Clock, Resetn, H3);
H4_disp: regn generic map (n => 7)
         port map (Seg7Data, HEn(3), Clock, Resetn, H4);
H5_disp: regn generic map (n => 7)
         port map (Seg7Data, HEn(2), Clock, Resetn, H5);
H6_disp: regn generic map (n => 7)
         port map (Seg7Data, HEn(1), Clock, Resetn, H6);
H7_disp: regn generic map (n => 7)
         port map (Seg7Data, HEn(0), Clock, Resetn, H7);

end behavior ; -- behavior