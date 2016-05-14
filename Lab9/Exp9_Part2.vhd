Library ieee;
Use ieee.std_logic_1164.all;

entity Exp9_Part2 is
      port (
            SW: in std_logic_vector(17 downto 0);
            LEDR: out std_logic_vector(17 downto 0);
            LEDG: out std_logic_vector(7 downto 0);
            KEY: in std_logic_vector(1 downto 0);
            CLOCK_50: in std_logic;
            HEX0, HEX1, HEX7:     out std_logic_vector(6 downto 0)
          );
end Exp9_Part2;

architecture behavior OF Exp9_Part2 is
    component flipflop_d_nbits
        generic (
            n : natural := 8
        );
        port (
            D: in std_logic_vector(n-1 downto 0);
            Clk, Rst : in std_logic;
            Q, Qn: out std_logic_vector(n-1 downto 0)
        );
    end component flipflop_d_nbits;

    component decodificador
        port (  entrada: in std_logic_vector(3 downto 0);
                saida:      out std_logic_vector(6 downto 0)
        );
    end component decodificador;

    component multiplexer is 
        generic ( n: integer := 8);
        port (  entrada1: in std_logic_vector(n-1 downto 0);
                entrada2: in std_logic_vector(n-1 downto 0);
                selecao: in std_logic;
                saida: out std_logic_vector(n-1 downto 0));
    end component multiplexer;

    component ramlpm
        PORT(address     : IN STD_LOGIC_VECTOR (4 DOWNTO 0) := '0'&'0'&'0'&'0'&'0';
            clock       : IN STD_LOGIC  := '1';
            data        : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
            wren        : IN STD_LOGIC ;
            q       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );
    END component ramlpm;

    component somador
        generic ( n: integer:= 8);
        port (  addsub: in std_logic;
                entrada1: in std_logic_vector(n-1 downto 0);
                entrada2: in std_logic_vector(n-1 downto 0);
                saida: buffer std_logic_vector(n-1 downto 0);
                overflow: out std_logic);
    end component somador;

    -- parte 1
    signal CLK_M, reset: std_logic;
    signal address, address_ffd_out: std_logic_vector(4 downto 0);
    signal input_data, input_data_ffd_out, mem_data_out: std_logic_vector(7 downto 0);
    signal wren, wren_ffd_out: std_logic_vector(0 downto 0);

    --parte 2

begin
    CLK_M <= KEY(0);
    reset <= not(KEY(1));

--    input_data <= SW(17 downto 10);
--	  address <= '0' & SW(3 downto 0);
--    wren(0 downto 0) <= SW(8 downto 8);
--    LEDG(0 downto 0) <= wren_ffd_out(0 downto 0);

    input_data_mux: multiplexer 
                        generic map(n => 8)
                        port map(Zreg_out, TecD_out, SelM2, input_data);
    -- TecD = ??                        
    Zreg: flipflop_d_nbits
                        generic map (n => 8)
                        port map (D => M, Clk => CLK_Z, Rst => reset, Q => Zreg_out);

    alu: somador
            generic map (n => 8)
            port map (AddSubR, Breg_out, G, M, alu_of);

    Areg_mux: multiplexer 
                        generic map(n => 8)
                        port map(Areg, Zreg_out, SelM1, G);

    -- M9K (parte 1)
    address_ffd: flipflop_d_nbits
                    generic map (n => 5)
                    port map (D => address, Clk => CLK_M, Rst => reset, Q => address_ffd_out);

    input_data_ffd: flipflop_d_nbits
                    generic map (n => 8)
                    port map (D => input_data, Clk => CLK_M, Rst => reset, Q => input_data_ffd_out);

    wren_ffd: flipflop_d_nbits
                    generic map (n => 1)
                    port map (D => wren, Clk => CLK_M, Rst => reset, Q => wren_ffd_out);

    m9k: ramlpm port map (address_ffd_out, CLK_M, input_data_ffd_out, wren_ffd_out(0), mem_data_out);

    dec_addr7: decodificador port map (address_ffd_out(3 downto 0), HEX7);

    dec_addr1: decodificador port map (mem_data_out(7 downto 4), HEX1);
    dec_addr0: decodificador port map (mem_data_out(3 downto 0), HEX0);

    
end behavior;