library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Chen_Kevin_Control is
port (
  Chen_Kevin_OpCode: in std_logic_vector(5 downto 0);
  Chen_Kevin_Reset: in std_logic;
  Chen_Kevin_ALU_Op: out std_logic_vector(1 downto 0);
  Chen_Kevin_RegDst,Chen_Kevin_Branch,Chen_Kevin_MemRead,
  Chen_Kevin_MemtoReg,Chen_Kevin_MemWrite,Chen_Kevin_ALUSrc,
  Chen_Kevin_RegWrite: out std_logic
 );
end Chen_Kevin_Control;

architecture arch of Chen_Kevin_Control is

begin
process(Chen_Kevin_Reset,Chen_Kevin_OpCode)
begin
 if(Chen_Kevin_Reset = '1') then
   Chen_Kevin_ALU_Op <= "00";
   Chen_Kevin_RegDst <= '0';
	Chen_Kevin_Branch <= '0';
	Chen_Kevin_MemRead <= '0';
   Chen_Kevin_MemtoReg <= '0';
   Chen_Kevin_MemWrite <= '0';
   Chen_Kevin_ALUSrc <= '0';
   Chen_Kevin_RegWrite <= '0';
 else 
 case Chen_Kevin_OpCode is
  when "000000" => -- R-type
   Chen_Kevin_ALU_Op <= "10";
   Chen_Kevin_RegDst <= '1';
	Chen_Kevin_Branch <= '0';
	Chen_Kevin_MemRead <= '0';
   Chen_Kevin_MemtoReg <= '0';
   Chen_Kevin_MemWrite <= '0';
   Chen_Kevin_ALUSrc <= '0';
   Chen_Kevin_RegWrite <= '1';
  when "100011" => -- lw
   Chen_Kevin_ALU_Op <= "00";
   Chen_Kevin_RegDst <= '0';
	Chen_Kevin_Branch <= '0';
	Chen_Kevin_MemRead <= '1';
   Chen_Kevin_MemtoReg <= '1';
   Chen_Kevin_MemWrite <= '0';
   Chen_Kevin_ALUSrc <= '1';
   Chen_Kevin_RegWrite <= '1';
  when "101011" => -- sw
   Chen_Kevin_ALU_Op <= "00";
   Chen_Kevin_RegDst <= '-';
	Chen_Kevin_Branch <= '0';
	Chen_Kevin_MemRead <= '0';
   Chen_Kevin_MemtoReg <= '-';
   Chen_Kevin_MemWrite <= '1';
   Chen_Kevin_ALUSrc <= '1';
   Chen_Kevin_RegWrite <= '0';
 when "000100" => -- beq
   Chen_Kevin_ALU_Op <= "01";
   Chen_Kevin_RegDst <= '-';
	Chen_Kevin_Branch <= '1';
	Chen_Kevin_MemRead <= '0';
   Chen_Kevin_MemtoReg <= '-';
   Chen_Kevin_MemWrite <= '0';
   Chen_Kevin_ALUSrc <= '0';
   Chen_Kevin_RegWrite <= '0';
 when others =>   
   Chen_Kevin_ALU_Op <= "00";
   Chen_Kevin_RegDst <= '0';
	Chen_Kevin_Branch <= '0';
	Chen_Kevin_MemRead <= '0';
   Chen_Kevin_MemtoReg <= '0';
   Chen_Kevin_MemWrite <= '0';
   Chen_Kevin_ALUSrc <= '0';
   Chen_Kevin_RegWrite <= '0';
 end case;
 end if;
end process;

end arch;