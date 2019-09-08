Library ieee;
use ieee.std_logic_1164.all;

entity Chen_Kevin_Shift_Left_By_Two is
port(
			Chen_Kevin_a: in std_logic_vector(31 downto 0);
			Chen_Kevin_result: out std_logic_vector(31 downto 0)
			);
end Chen_Kevin_Shift_Left_By_Two;

architecture arch of Chen_Kevin_Shift_Left_By_Two is

begin
			Chen_Kevin_result <= to_stdlogicvector(to_bitvector(Chen_Kevin_a) sll 2);
end arch;