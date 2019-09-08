library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Chen_Kevin_SignExtend is
port (
 Chen_Kevin_Instruction: in std_logic_vector(15 downto 0);
 Chen_Kevin_out: out std_logic_vector(31 downto 0)
);
end Chen_Kevin_SignExtend;

architecture arch of Chen_Kevin_SignExtend is
begin
	Chen_Kevin_out <= (31 downto 16 => '0') & Chen_Kevin_Instruction;
end arch;