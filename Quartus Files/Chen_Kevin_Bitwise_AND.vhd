Library ieee;
use ieee.std_logic_1164.all;

entity Chen_Kevin_Bitwise_AND is
port(
			Chen_Kevin_a,Chen_Kevin_b: in std_logic_vector(31 downto 0);
			Chen_Kevin_result: out std_logic_vector(31 downto 0)
			);
end Chen_Kevin_Bitwise_AND;

architecture arch of Chen_Kevin_Bitwise_AND is

begin
			Chen_Kevin_result <= Chen_Kevin_a and Chen_Kevin_b;
end arch;