library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Chen_Kevin_Memory is
port (
 Chen_Kevin_Clock: in std_logic; -- Clock on rising edge
 Chen_Kevin_Address: in std_logic_Vector(31 downto 0); -- Address that we take in the result of ALU
 Chen_Kevin_Write_Data: in std_logic_Vector(31 downto 0); -- Write Data
 Chen_Kevin_WE,Chen_Kevin_Read:in std_logic; -- Write Enable and Read
 Chen_Kevin_Read_Data: out std_logic_Vector(31 downto 0) -- Read Data
);
end Chen_Kevin_Memory;

architecture arch of Chen_Kevin_Memory is
signal Chen_Kevin_RAM_Address: std_logic_vector(31 downto 0);
type Chen_Kevin_Data_Memory is array (0 to 4294967295 ) of std_logic_vector (31 downto 0);
signal Chen_Kevin_ram: Chen_Kevin_Data_Memory :=((others=> (others=>'0')));
begin

 Chen_Kevin_RAM_Address <= Chen_Kevin_Address(31 downto 0);
 process(Chen_Kevin_Clock)
 begin
  if(rising_edge(Chen_Kevin_Clock)) then
  if (Chen_Kevin_WE='1') then
  Chen_Kevin_ram(to_integer(unsigned(Chen_Kevin_RAM_Address))) <= Chen_Kevin_Write_Data;
  end if;
  end if;
 end process;
   Chen_Kevin_Read_Data <= Chen_Kevin_ram(to_integer(unsigned(Chen_Kevin_RAM_Address))) when (Chen_Kevin_Read='1') else x"00000000";

end arch;