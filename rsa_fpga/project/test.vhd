library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

entity test is
	port ( SW : in std_logic_vector(17 downto 0);
		   LEDR : out std_logic_vector(17 downto 0)
	);

end test;

architecture behavior of test is


component comp is
	port (  key : in std_logic_vector(31 downto 0);
		exponential : in std_logic_vector(31 downto 0);
		message : in std_logic_vector(31 downto 0);
		encrypted : out std_logic_vector(31 downto 0);
		test_sig: out integer range 0 to 2000000000
	);
end component comp;

component modexp is
	port (  key : in integer range -2147483648 to 2147483647;
		exponential : in integer range -2147483648 to 21474836;
		message : in integer range -2147483648 to 21474836;
		encrypted : out integer range -2147483648 to 21474836
	);
end component modexp;


signal key, encrypted, encrypted2, exponential, message: std_logic_vector(31 downto 0);
signal test_sig: integer;
signal key_int, exp_int, k_int, encrypted_int, exponential_int, message_int: integer;

begin 

	key <= "00000000000001110001010110001000";
	exponential <= "00000000000000000000000000010001";
	message <= "00000000000000000000000011010010";

	exp_int <= to_integer(unsigned(exponential));
	k_int <= to_integer(unsigned(key));
	exponential_int <= to_integer(unsigned(exponential));




comp_inst: comp port map(key, exponential, message, encrypted, test_sig);

modexp_inst: modexp port map(k_int, exp_int, 0, encrypted_int);

encrypted2 <= std_logic_vector(to_unsigned(test_sig, encrypted2'length));

end behavior;
