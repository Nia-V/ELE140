
library IEEE;
use IEEE.std_logic_1164.all;

entity Adder is
    port(
        A   : in  std_logic;
        B   : in  std_logic;
        Cin : in  std_logic := '0';  -- input carry / previous stage
        Cout : out std_logic;   -- Carry output next stage
		  S    : out std_logic
    );
end Adder;

architecture add_arch of Adder is
begin
process (A,B,Cin)
begin
Cout <= (((A xor B) and Cin) or (A and B));
	S <= ((A xor B)xor Cin) ;
   
end process;
end add_arch;
