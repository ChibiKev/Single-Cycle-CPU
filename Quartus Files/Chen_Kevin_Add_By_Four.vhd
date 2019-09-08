Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Chen_Kevin_Add_By_Four is
port(
			Chen_Kevin_a: in std_logic_vector(31 downto 0);
			Chen_Kevin_result: out std_logic_vector(31 downto 0)
			);
end Chen_Kevin_Add_By_Four;

architecture arch of Chen_Kevin_Add_By_Four is

begin
			Chen_Kevin_result <= std_logic_vector(to_unsigned(to_integer(unsigned(Chen_Kevin_a)) + 4,32));
end arch;