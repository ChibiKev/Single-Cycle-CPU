library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Chen_Kevin_Register is
port (
 Chen_Kevin_Clock, Chen_Kevin_Reset: in std_logic; -- Clock on rising edge. Reset to reset back to 0
 Chen_Kevin_WE: in std_logic; -- Write enable
 Chen_Kevin_Write_Register: in std_logic_vector(4 downto 0); -- Writing to register
 Chen_Kevin_Write_Data: in std_logic_vector(31 downto 0); -- Data that we'll be writing to register
 Chen_Kevin_Read_Address_1: in std_logic_vector(4 downto 0); -- Address 1, we'll be looking at
 Chen_Kevin_Read_Data_1: out std_logic_vector(31 downto 0); -- Value of address 1
 Chen_Kevin_Read_Address_2: in std_logic_vector(4 downto 0); -- Address 2, we'll be looking at
 Chen_Kevin_Read_Data_2: out std_logic_vector(31 downto 0) -- Value of address 2
);
end Chen_Kevin_Register;

architecture arch of Chen_Kevin_Register is
type Chen_Kevin_Type is array (0 to 31 ) of std_logic_vector (31 downto 0); -- Array made to store the values
signal Chen_Kevin_Array: Chen_Kevin_Type;
begin
 process(Chen_Kevin_Clock,Chen_Kevin_Reset) 
 begin
 if(Chen_Kevin_Reset = '1') then -- Reset makes everything zero
		Chen_Kevin_Array(0)  <= x"00000000";
		Chen_Kevin_Array(1)  <= x"00000000";
		Chen_Kevin_Array(2)  <= x"00000000";
		Chen_Kevin_Array(3)  <= x"00000000";
		Chen_Kevin_Array(4)  <= x"00000000";
		Chen_Kevin_Array(5)  <= x"00000000";
		Chen_Kevin_Array(6)  <= x"00000000";
		Chen_Kevin_Array(7)  <= x"00000000";
		Chen_Kevin_Array(8)  <= x"00000000";
		Chen_Kevin_Array(9)  <= x"00000000";
		Chen_Kevin_Array(10) <= x"00000000";
		Chen_Kevin_Array(11) <= x"00000000";
		Chen_Kevin_Array(12) <= x"00000000";
		Chen_Kevin_Array(13) <= x"00000000";
		Chen_Kevin_Array(14) <= x"00000000";
		Chen_Kevin_Array(15) <= x"00000000";
		Chen_Kevin_Array(16) <= x"00000000";
		Chen_Kevin_Array(17) <= x"00000001";
		Chen_Kevin_Array(18) <= x"00000002";
		Chen_Kevin_Array(19) <= x"00000000";
		Chen_Kevin_Array(20) <= x"00000000";
		Chen_Kevin_Array(21) <= x"00000000";
		Chen_Kevin_Array(22) <= x"00000000";
		Chen_Kevin_Array(23) <= x"00000000";
		Chen_Kevin_Array(24) <= x"00000000";
		Chen_Kevin_Array(25) <= x"00000000";
		Chen_Kevin_Array(26) <= x"00000000";
		Chen_Kevin_Array(27) <= x"00000000";
		Chen_Kevin_Array(28) <= x"00000000";
		Chen_Kevin_Array(29) <= x"00000000";
		Chen_Kevin_Array(30) <= x"00000000";
		Chen_Kevin_Array(31) <= x"00000000";
 elsif(rising_edge(Chen_Kevin_Clock)) then -- At clock, store data into register that's stored in an array
   if(Chen_Kevin_WE='1') then
    Chen_Kevin_Array(to_integer(unsigned(Chen_Kevin_Write_Register))) <= Chen_Kevin_Write_Data;
   end if;
 end if;
 end process;
-- The outputs
 Chen_Kevin_Read_Data_1 <= x"00000000" when Chen_Kevin_Read_Address_1 = "00000" else Chen_Kevin_Array(to_integer(unsigned(Chen_Kevin_Read_Address_1)));
 Chen_Kevin_Read_Data_2 <= x"00000000" when Chen_Kevin_Read_Address_2 = "00000" else Chen_Kevin_Array(to_integer(unsigned(Chen_Kevin_Read_Address_2)));

end arch;