library IEEE;
use IEEE.std_logic_1164.all;

entity DECODEUR is
    port(
		  SEQ : in  std_logic;
		  CLK : in  std_logic;
        S   : in  std_logic;
		 
        C   : OUT  std_logic;
		  B   : OUT  std_logic;
		  A   : OUT  std_logic
		  
    );
end DECODEUR;

architecture ARCH_DEC of DECODEUR is
signal FQ : std_logic_vector (3 downto 0);
SIGNAL Q  : std_logic_vector(3 downto 0);
begin




	 FQ(0) <= (((NOT(S) AND NOT(Q(3)) AND NOT(Q(2))) AND ((NOT(Q(1)) AND Q(0)) OR (Q(1) AND NOT(Q(0)))))
	 OR (S AND ((NOT(Q(3)) AND NOT(Q(2))) OR (NOT(Q(1)) AND Q(0)) OR (Q(3) AND Q(0)))));
	 
	 FQ(1) <= ((NOT S AND ((NOT Q(0) AND NOT Q(3) AND NOT Q(2)) OR (Q(1) AND NOT Q(0)) OR (Q(2) AND NOT Q(1) AND Q(0)) OR (Q(3) AND NOT Q(1) AND Q(0))))
    OR     (S AND (((NOT Q(1) AND Q(0)) AND ((NOT Q(3) AND Q(2)) OR (Q(3) AND NOT Q(2))))OR((Q(1) AND NOT Q(0)) AND (Q(2) OR Q(3))))));
	 
	 FQ(2) <=((NOT S) AND((Q(2) AND (NOT Q(1))) OR ((NOT Q(2)) AND Q(1) AND Q(0)) OR (Q(2) AND (NOT Q(0))) ) )
       OR( S AND( (Q(2) AND (NOT Q(0))) OR((NOT Q(2)) AND Q(1) AND Q(0)) OR((NOT Q(3)) AND Q(2) AND (NOT Q(1))) ));
	 
	 
	 FQ(3) <=( (NOT S) AND ( Q(3) OR (Q(2) AND Q(1) AND Q(0)) ))
       OR( S AND( (Q(3) AND (NOT Q(2))) OR(Q(3) AND (NOT Q(0))) OR(Q(2) AND Q(1) AND Q(0)) OR((NOT Q(3)) AND Q(2) AND Q(0)) ));

		 
process(CLK,SEQ)
BEGIN
IF SEQ  = '0' THEN 
	 C <= '0';
	 B <= '0';
	 A <= '0';
	 Q <= "0000";
ELSIF SEQ = '1' THEN
	IF RISING_EDGE(CLK) THEN
		Q <= FQ;
		C <= (Q(3) AND (Q(2) OR Q(0)));
		B <= (Q(3) AND NOT Q(2)) OR Q(0);
		A <= Q(1);
END IF;
END IF;
END PROCESS;

end ARCH_DEC;