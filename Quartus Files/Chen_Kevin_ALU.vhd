Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Chen_Kevin_ALU is
port(
			Chen_Kevin_a, Chen_Kevin_b: in std_logic_vector (31 downto 0);
			Chen_Kevin_result: out std_logic_vector (31 downto 0);
			Chen_Kevin_op: in std_logic_vector(3 downto 0);
			Chen_Kevin_Zero: out std_logic
			);
end Chen_Kevin_ALU;

architecture arch of Chen_Kevin_ALU is
	signal Chen_Kevin_in1, Chen_Kevin_in2: std_logic_vector(31 downto 0);
	signal Chen_Kevin_AND, Chen_Kevin_OR, Chen_Kevin_ADD, Chen_Kevin_SUBTRACT,
	Chen_Kevin_MULTIPLYResult, Chen_Kevin_DIVIDE: std_logic_vector(31 downto 0);
	signal Chen_Kevin_Answer: std_logic_vector(31 downto 0);

component Chen_Kevin_Bitwise_AND
  port (Chen_Kevin_a, Chen_Kevin_b : in std_logic_vector(31 downto 0);
        Chen_Kevin_result : out std_logic_vector(31 downto 0)
    );
end component;

component Chen_Kevin_Bitwise_OR
  port (Chen_Kevin_a, Chen_Kevin_b : in std_logic_vector(31 downto 0);
        Chen_Kevin_result : out std_logic_vector(31 downto 0)
    );
end component;

component Chen_Kevin_LPM_ADD
  port (dataa, datab : in std_logic_vector(31 downto 0);
        result : out std_logic_vector(31 downto 0)
    );
end component;

component Chen_Kevin_LPM_SUBTRACT
  port (dataa, datab: in std_logic_vector(31 downto 0);
        result : out std_logic_vector(31 downto 0)
    );
end component;

component Chen_Kevin_Multiply
  port (Chen_Kevin_a, Chen_Kevin_b: in std_logic_vector(31 downto 0);
        Chen_Kevin_result : out std_logic_vector(31 downto 0)
    );
end component;

component Chen_Kevin_LPM_DIVIDE
  port (denom, numer: in std_logic_vector(31 downto 0);
        quotient : out std_logic_vector(31 downto 0)
    );
end component;
				
begin
Chen_Kevin_in1 <= Chen_Kevin_a;
Chen_Kevin_in2 <= Chen_Kevin_b;

Chen_Kevin_ANDFunction: Chen_Kevin_Bitwise_AND 
	port map( Chen_Kevin_a => Chen_Kevin_in1,
					Chen_Kevin_b => Chen_Kevin_in2, 
					Chen_Kevin_result => Chen_Kevin_AND);

Chen_Kevin_ORFunction: Chen_Kevin_Bitwise_OR 
	port map( Chen_Kevin_a => Chen_Kevin_in1,
					Chen_Kevin_b => Chen_Kevin_in2, 
					Chen_Kevin_result => Chen_Kevin_OR);					

Chen_Kevin_LPM_ADDFunction: Chen_Kevin_LPM_ADD 
	port map( dataa => Chen_Kevin_in1,
					datab => Chen_Kevin_in2, 
					result => Chen_Kevin_ADD);

Chen_Kevin_LPM_SUBTRACTFunction: Chen_Kevin_LPM_SUBTRACT
	port map( dataa => Chen_Kevin_in1,
					datab => Chen_Kevin_in2, 
					result => Chen_Kevin_SUBTRACT);

Chen_Kevin_LPM_MULTIPLYFunction: Chen_Kevin_MulTIPLY
	port map( Chen_Kevin_a => Chen_Kevin_in1,
					Chen_Kevin_b => Chen_Kevin_in2, 
					Chen_Kevin_result => Chen_Kevin_MULTIPLYresult);

Chen_Kevin_DIVIDEFunction: Chen_Kevin_LPM_DIVIDE 
	port map( numer => Chen_Kevin_in1,
					denom => Chen_Kevin_in2, 
					quotient => Chen_Kevin_DIVIDE);
					
process (Chen_Kevin_a,Chen_Kevin_b,Chen_Kevin_op)
begin
		case Chen_Kevin_op is 
			when "0000" =>
			Chen_Kevin_Answer <= Chen_Kevin_AND;
			when "0001" =>			
			Chen_Kevin_Answer <= Chen_Kevin_OR;
			when "0010" =>
			Chen_Kevin_Answer <= Chen_Kevin_ADD;
			when "0011" =>
			Chen_Kevin_Answer <= Chen_Kevin_SUBTRACT;
			when "0100" =>
			Chen_Kevin_Answer <= Chen_Kevin_MULTIPLYresult;
			when "0101" =>
			Chen_Kevin_Answer <= Chen_Kevin_DIVIDE;
			when others =>
				NULL;
		end case;
		if (Chen_Kevin_Answer = "00000000000000000000000000000000") then
			Chen_Kevin_Zero <= '1';
		else
			Chen_Kevin_Zero <= '0';
		end if;
		Chen_Kevin_Result <= Chen_Kevin_Answer;
end process;

end arch;