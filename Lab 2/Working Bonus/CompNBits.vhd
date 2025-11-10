library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CompNBits is
    port(
        A, B       : in  std_logic_vector(0 to 3);
        PP, PG, EG : buffer std_logic;
        sega, segb : out std_logic_vector(0 to 6);
		  s_a,s_b  : out std_logic;
		  who 		: out std_logic_vector(0 to 6)
    );
end CompNBits;

architecture rtl of CompNBits is
    component CelluleType
        port(
            A   : in  std_logic;
            B   : in  std_logic;
            x   : in  std_logic;
            y   : in  std_logic;
            F_C : out std_logic;
            F_D : out std_logic
        );
    end component;

    signal intercell_C : std_logic_vector(0 to 4);
    signal intercell_D : std_logic_vector(0 to 4);

function seg(val : in std_logic_vector) return std_logic_vector is
    variable result : std_logic_vector(0 to 6) := "0000000";
begin
      case val is
    when "0000" => result := "0000001"; -- 0
    when "1000" => result := "0000000"; -- 8
    when "1001" | "0111" => result := "0001111"; -- 7
    when "1010" | "0110" => result := "0100000"; -- 6
    when "1011" | "0101" => result := "0100100"; -- 5
    when "1100" | "0100" => result := "1001100"; -- 4
    when "1101" | "0011" => result := "0000110"; -- 3
    when "1110" | "0010" => result := "0010010"; -- 2
    when "1111" | "0001" => result := "1001111"; -- 1
    when others => result := "1111111"; -- blank (all OFF)
end case;
        return result;
    end seg;

begin
    intercell_C(0) <= '0';
    intercell_D(0) <= '1';

    gen_cells: for i in 0 to 3 generate
    begin
        cell_inst: CelluleType
        port map(
            A   => A(i),
            B   => B(i),
            x   => intercell_C(i),
            y   => intercell_D(i),
            F_C => intercell_C(i+1),
            F_D => intercell_D(i+1)
        );
    end generate;

    PP <= (not intercell_C(4)) and (not intercell_D(4));
    PG <= intercell_C(4) and intercell_D(4);
    EG <= intercell_C(4) xor intercell_D(4);

    sega <= seg(A(0 to 3));
    segb <= seg(B(0 to 3));
s_a <= not A(0);
s_b <= not B(0);

process(PP, PG)
begin
    if PP = '1' then
        who <= "1110010";
    elsif PG = '1' then
        who <= "1100110";
    else
        who <= "1110110";
    end if;
end process;


end architecture;