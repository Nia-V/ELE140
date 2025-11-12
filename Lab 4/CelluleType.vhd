library IEEE;
use IEEE.std_logic_1164.all;

entity CelluleType is
    port(
        A   : in  std_logic;
        B   : in  std_logic;
        x   : in  std_logic;  -- input carry / previous stage
        y   : in  std_logic;  -- input D / previous stage
        F_C : out std_logic;  -- output carry
        F_D : out std_logic   -- output D
    );
end CelluleType;

architecture CelluleType_arch of CelluleType is
begin
process (A,B,x,y)
begin
    -- combinational logic
F_C <=  (y and not A) or (y and B) or (x and not B) or (x and A);
F_D <= (y and not (A) and B) or (x and A and not B) or (x and y);
end process;
end CelluleType_arch;
