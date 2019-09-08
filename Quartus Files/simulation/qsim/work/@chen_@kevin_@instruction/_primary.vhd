library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Instruction is
    port(
        Chen_Kevin_Read_Address: in     vl_logic_vector(31 downto 0);
        Chen_Kevin_Instruction: out    vl_logic_vector(31 downto 0)
    );
end Chen_Kevin_Instruction;
