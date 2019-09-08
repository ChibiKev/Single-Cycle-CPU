library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Chen_Kevin_PC is
port (
 Chen_Kevin_Clock: in std_logic;
 Chen_Kevin_Reset: in std_logic;
 Chen_Kevin_Input: in std_logic_vector(31 downto 0);
 Chen_Kevin_Output: out  std_logic_vector(31 downto 0)
);
end Chen_Kevin_PC;

architecture arch of Chen_Kevin_PC is
signal temp: std_logic_Vector(31 downto 0);
begin
process(Chen_Kevin_Clock, Chen_Kevin_Reset, Chen_Kevin_Input)
begin
if (Chen_Kevin_Reset = '1') then
	temp <= "00000000000000000000000000000000";
elsif (Chen_Kevin_Input = "00000000000000000000000000011000") then
	temp <= "00000000000000000000000000000100";
else
	if (rising_edge(Chen_Kevin_Clock)) then
	temp <= Chen_Kevin_input;
	end if;
end if;
end process;
Chen_Kevin_Output <= temp;
end arch;