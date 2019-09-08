library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Chen_Kevin_ALU_Control is
port(
  Chen_Kevin_ALU_Op : in std_logic_vector(1 downto 0);
  Chen_Kevin_Function : in std_logic_vector(5 downto 0);
  Chen_Kevin_op: out std_logic_vector(3 downto 0)
);
end Chen_Kevin_ALU_Control;

architecture arch of Chen_Kevin_ALU_Control is
begin
process(Chen_Kevin_ALU_Op,Chen_Kevin_Function)
begin
case Chen_Kevin_ALU_Op is
when "00" => -- lw and sw
 Chen_Kevin_op <= "0010"; -- Add
when "01" =>  -- beq
 Chen_Kevin_op <= "0011"; -- Subtract
when "10" => -- R-Type
 if (Chen_Kevin_Function = "000000") then -- AND
 Chen_Kevin_op <= "0000";
 elsif (Chen_Kevin_Function = "000001") then -- OR
 Chen_Kevin_op <= "0001";
 elsif (Chen_Kevin_Function = "000010") then -- +
 Chen_Kevin_op <= "0010";
 elsif (Chen_Kevin_Function = "000011") then -- -
 Chen_Kevin_op <= "0011";
 elsif (Chen_Kevin_Function = "000100") then -- *
 Chen_Kevin_op <= "0100";
 elsif (Chen_Kevin_Function = "000101") then -- /
 Chen_Kevin_op <= "0101";
 elsif (Chen_Kevin_Function = "000110") then 
 Chen_Kevin_op <= "0110";
 elsif (Chen_Kevin_Function = "000111") then 
 Chen_Kevin_op <= "0111";
 elsif (Chen_Kevin_Function = "001000") then 
 Chen_Kevin_op <= "1000";
 elsif (Chen_Kevin_Function = "001001") then 
 Chen_Kevin_op <= "1001";
 elsif (Chen_Kevin_Function = "001010") then 
 Chen_Kevin_op <= "1010";
 elsif (Chen_Kevin_Function = "001011") then 
 Chen_Kevin_op <= "1011";
 elsif (Chen_Kevin_Function = "001100") then 
 Chen_Kevin_op <= "1100";
 elsif (Chen_Kevin_Function = "001101") then 
 Chen_Kevin_op <= "1101";
 elsif (Chen_Kevin_Function = "001111") then 
 Chen_Kevin_op <= "1111";
 else
 Chen_Kevin_op <= Null;
 end if;
when others => 
	Null;
end case;
end process;
end arch;