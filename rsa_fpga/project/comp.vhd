library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

entity comp is
	port ( key : in std_logic_vector(31 downto 0);
		exponential : in std_logic_vector(31 downto 0);
		message : in std_logic_vector(31 downto 0);
		encrypted : out std_logic_vector(31 downto 0);
		test_sig: out integer range 0 to 2000000000 := 0
	);

end comp;

architecture behavior of comp is

	signal key_int, encrypted_int, exponential_int, message_int: integer;
begin 


test_proc: process(key, exponential, message)

	
variable exp_int, k_int, enc_int: integer;
	

begin

	exp_int := to_integer(unsigned(exponential));
	k_int := to_integer(unsigned(key));

	exponential_int <= to_integer(unsigned(exponential));
	

	-- E = M^e mod n
	enc_int := exp_int**2;
	--encrypted <= std_logic_vector(to_signed(encrypted_int, encrypted'length));
	--encrypted_int <= to_integer(unsigned(message));
	--encrypted <= std_logic_vector(to_unsigned(encrypted_int));
	--encrypted <= key + exponential;

	test_sig <= enc_int;
	



	
end process ;

end behavior;
