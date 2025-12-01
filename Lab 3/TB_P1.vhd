library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TB_P1 is

end TB_P1;


architecture testbench of TB_P1 is
component P1
    port(
 		A, B       : in  std_logic_vector(11 downto 11);
		S       : out  std_logic_vector(11 downto 11)
    );
	 

end component;




	signal A : std_logic_vector(11 downto 0);
	signal B : std_logic_vector(11 downto 0);
	signal S : std_logic_vector(11 downto 0);

begin

	main : process
	begin
	A <= std_logic_vector(to_unsigned(1000, 12));
	B <= std_logic_vector(to_unsigned(50, 12));
	wait for 20 ns;
	A <= std_logic_vector(to_unsigned(1000, 12));
	B <= std_logic_vector(to_unsigned(500, 12));


	end process;

DUT : P1

	port map (

		A => A,
		B => B,
		S => S
	);

end architecture testbench;

