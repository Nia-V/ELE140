ibrary ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TestBenchnum1 is

end entity TestBenchnum1;


architecture testbench of TestBenchnum1 is


signal SEQ :   std_logic;
signal CLK :   std_logic;
signal S   : std_logic;
signal C   :   std_logic;
signal B   :   std_logic;
signal A   :   std_logic;


begin

	main : process
	begin
	SEQ <= '0';
	CLK <= '0';
	S <= '0';
wait for 20 ns;
		SEQ <= '0';
	CLK <= '0';
	S <= '0';
wait for 20 ns;
	SEQ <= '0';
	CLK <= '0';
	S <= '0';
wait for 20 ns;
	SEQ <= '0';
	CLK <= '0';
	S <= '0';
wait for 20 ns;
	SEQ <= '0';
	CLK <= '0';
	S <= '0';
wait for 20 ns;
	SEQ <= '0';
	CLK <= '0';
	S <= '0';
wait for 20 ns;
	SEQ <= '0';
	CLK <= '0';
	S <= '0';
wait for 20 ns;
	SEQ <= '0';
	CLK <= '0';
	S <= '0';
wait for 20 ns;
	
	
	
	
	
	
	
	
	
	
	wait;


	end process;

DUT : entity work.num1

	port map (

		entreeA => A,
		entreeB => B,
		sortieq => S
	);

end architecture testbench;
