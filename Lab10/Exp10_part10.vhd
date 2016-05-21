library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity proc is
    port ( DIN : in std_logic_vector(15 downto 0);
    Resetn, Clock, Run : in std_logic;
    Done : buffer std_logic;
    BusWires : buffer std_logic_vector(15 downto 0));
end proc;
architecture Behavior of proc is
-- . . . declare components
-- . . . declare signals
    type State_type is (T0, T1, T2, T3);
    signal Tstep_Q, Tstep_D: State_type;
-- . . .
begin
    High <= '1';
    I <= IR(1 to 3);
    decX: dec3to8 port map (IR(4 to 6), High, Xreg);
    decY: dec3to8 port map (IR(7 to 9), High, Yreg);
    
    statetable: process (Tstep_Q, Run, Done)
    begin
        case Tstep_Q is
        when T0 => if(Run = '0') then Tstep_D <= T0;
        else Tstep_D <= T1;
        end if; - - data is loaded into IR in this time step
        -- . . . other states
        end case;
    end process;

    controlsignals: process (Tstep_Q, I, Xreg, Yreg)
    begin
        -- . . . specify initial values
        case Tstep_Q is
            when T0 => -- store DIN in IR as long as Tstep_Q = 0
                IRin <= '1';
            when T1 => -- define signals in time step T1
                case I is
                -- . . .
                end case;
        
            when T2 => -- define signals in time step T2
                case I is
                -- . . .
                end case;
            when T3 => -- define signals in time step T3
                case I is
                -- . . .
                end case;
        end case;
    end process;
    
    fsmflipflops: process (Clock, Resetn, Tstep_D)
    begin
    -- . . .
    end process;
    
    reg_0: regn port map (BusWires, Rin(0), Clock, R0);
    -- . . . instantiate other registers and the adder/subtracter unit
    -- . . . define the bus
    end Behavior;