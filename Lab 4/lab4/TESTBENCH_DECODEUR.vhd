library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TB_DEC is

end entity TB_DEC;


architecture ARCH_TB of TB_DEC is
	component DECODEUR 

	port (
			SEQ : in std_logic;
			S	 : in std_logic;
			CLK : in std_logic;
			C   : OUT  std_logic;
			B   : OUT  std_logic;
			A   : OUT  std_logic
			);
	 end component;
	 
	 	component serialtester 
	 port(
        clock   : in    std_logic;
        seq     : in    std_logic;
        s_i     : in    std_logic_vector(8 downto 0);
        s_o     : out   std_logic;
        seq_o   : out   std_logic);
	 end component;
	 
	component 	emetteur
		
		PORT
	(
		CLK :  IN  STD_LOGIC;
		SEQ :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		TX :  OUT  STD_LOGIC
	);
	 
	end component; 
	 
	component RECEPTEUR 
    port(
		  SEQ : in  std_logic:= '0' ;
		  CLK : in  std_logic := '0';
			S	: in std_logic;
        C   : OUT  std_logic;
		  B   : OUT  std_logic;
		  A   : OUT  std_logic
		  
    );
	 
	END COMPONENT;
	
	signal SBUS : std_logic_vector(8 downto 0):= "000000000";
	signal S_o :   std_logic;
	signal SEQ :   std_logic:= '0';
	signal SEQ_o :   std_logic;
	signal CLK :   std_logic;
	signal C_o   :   std_logic;
	signal B_o   :   std_logic;
	signal A_o   :   std_logic;
	signal CBA : std_logic_vector(2 downto 0);
	Signal Tx : std_logic;
	signal FCBA : std_logic_vector(2 downto 0);
	constant PERIODE_HORLOGE: time := 20 ns;
begin



  process
 begin
 clk <= '0';
 wait for PERIODE_HORLOGE/2;
 clk <= '1';
 wait for PERIODE_HORLOGE/2;
 end process; 

   process
 begin
 SEQ <= '1';

 wait for PERIODE_HORLOGE*15;
CBA <= C_o & B_o & A_o;
 SEQ <= '0';
   
 wait for PERIODE_HORLOGE*15;
 end process; 
 
 process
 begin
 wait for PERIODE_HORLOGE*30;
 SBUS <= "000111111";
 wait for PERIODE_HORLOGE*30;
 SBUS <= "001011111";
 wait for PERIODE_HORLOGE*30;
 SBUS <= "001101111";
 wait for PERIODE_HORLOGE*30;
 SBUS <= "001110111";
 wait for PERIODE_HORLOGE*30;
  SBUS <= "001111011";
 wait for PERIODE_HORLOGE*30;
   SBUS <= "001111101";
 wait for PERIODE_HORLOGE*30;
  SBUS <= "100000000";
 end process; 


		 
		  bruh : DECODEUR port map (
				 SEQ => SEQ_o,
				 S=>S_o,
				 CLK => CLK,
				 C => C_o,
				 B => B_o,
				 A => A_o);


 
		  bruh2 : serialtester port map (
				 seq => SEQ,
				 s_i => SBUS,
				 clock => CLK,
				 s_o => S_o,
				seq_o => SEQ_o);
 

 		  EM : emetteur port map (
			CLK =>CLK,
		SEQ => SEQ_o,
		A => CBA(0),
		B => CBA(1),
		C => CBA(2),
		TX =>Tx);
 
 	RECV:  RECEPTEUR 
    port map (
		  SEQ => SEQ_o,
		  CLK => CLK,
			S => Tx,
        C  => FCBA(2),
		  B  => FCBA(1),
		  A  => FCBA(0)
		  
    );
 
end architecture ARCH_TB;




