library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity serialtester is
    port(
        clock   : in    std_logic;
        seq     : in    std_logic;
        s_i     : in    std_logic_vector(8 downto 0);
        s_o     : out   std_logic;
        seq_o   : out   std_logic
    );
end entity;

architecture rtl of serialtester is
    signal cntr     : std_logic_vector(3 downto 0);
    signal s_reg    : std_logic_vector(8 downto 0);
begin


    process(clock, seq)
    begin
        if( seq = '0' ) then
            cntr <= x"8";

            s_reg  <= s_i;
            s_o <= '0';
        
        
        elsif( Rising_Edge(clock) ) then
            if(cntr = x"0") then
                cntr <= x"8";
        
            else
                cntr <= cntr - 1;
            end if;

            s_o <= s_reg( conv_integer(cntr) );
        end if;
    end process;

    -- delais d'une horloge
    process(clock)
    begin
        if( seq = '0' ) then
            seq_o <= '0';
        
        
        elsif( Rising_Edge(clock) ) then
            seq_o <= seq;
        end if;
    end process;
end rtl;