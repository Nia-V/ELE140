library IEEE;
use IEEE.std_logic_1164.all;

entity P1 is
    port(
 		A, B       : in  std_logic_vector(11 downto 11);
		S       : out  std_logic_vector(11 downto 11)
    );
	 

end P1;

architecture P1_ARCH of P1 is
constant upperbound : std_logic_vector(11 downto 0) := "011111111111";
signal actoverflow : std_logic;
signal unconstrainedsum :  std_logic_vector(11 downto 0);
signal carry : std_logic_vector(0 to 12):= "0000000000000";

component Adder
         port(
        A   : in  std_logic;
        B   : in  std_logic;
        Cin : in  std_logic := '0';  -- input carry / previous stage
        Cout : out std_logic;   -- Carry output next stage
		  S    : out std_logic
    );
    end component;
	 
	 
	 
begin 

gen_cells: for i in 0 to 11 generate
    begin
        cell_inst: Adder
        port map(
        A  => A(i),
        B  => B(i),
        Cin => carry(i),
        Cout => carry(i+1),   -- Carry output next stage
		  S => unconstrainedsum(i) 
        );
    end generate;


		  


process (A,B)
begin
if unconstrainedsum = '1' then
S <= unconstrainedsum;
elsif actoverflow = '0'then
S <= "011111111111";
else 
S <= "000000000000";
end if;


end process;
end P1_ARCH;
