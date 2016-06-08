library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity alu is
    generic (n: integer := 16);
    port (  A : in std_logic_vector(15 downto 0);
            B : in std_logic_vector(15 downto 0);
            O : buffer std_logic_vector(15 downto 0);
            alufn : in std_logic_vector(2 downto 0);
            overflow : out std_logic);
end alu;

architecture behavior of alu is
    signal operand: std_logic_vector(n-1 downto 0);
    signal result: std_logic_vector(n downto 0);
begin
    
    alu_process: process (A, B, alufn)
    begin
        case (alufn) is
            -- sum
            when "000" =>
                result <= ('0'&A) + ('0'&B);
                O <= result(n-1 downto 0);
                overflow <= result(n-1) xor result(n);
            -- subtraction
            when "001" =>
                operand <= not(B) + '1';
                result <= ('0'&A) + ('0'&operand);
                O <= result(n-1 downto 0);
                overflow <= result(n-1) xor result(n) xor B(n-1) xor A(n-1);
            -- and
            when "010" =>
                O <= A and B;
                overflow <= '0';
            -- or
            when "011" =>
                O <= A or B;
                overflow <= '0';
            -- LS by one
            when "100" =>
                O <= B(n-2 downto 0) & '0';
                overflow <= '0';
            -- RS by one
            when "101" =>
                O <= '0' & B(n-1 downto 1);
                overflow <= '0';
            when "110" =>
					O <= (others => '0');
            when "111" =>    
					O <= (others => '0');
        end case ;
    end process;
end behavior;
