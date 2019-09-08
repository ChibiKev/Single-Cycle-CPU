library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_SignExtend is
    port(
        Chen_Kevin_Instruction: in     vl_logic_vector(15 downto 0);
        Chen_Kevin_out  : out    vl_logic_vector(31 downto 0)
    );
end Chen_Kevin_SignExtend;
