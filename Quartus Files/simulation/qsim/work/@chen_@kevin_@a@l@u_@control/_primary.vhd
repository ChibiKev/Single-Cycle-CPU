library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_ALU_Control is
    port(
        Chen_Kevin_ALU_Op: in     vl_logic_vector(1 downto 0);
        Chen_Kevin_Function: in     vl_logic_vector(5 downto 0);
        Chen_Kevin_op   : out    vl_logic_vector(3 downto 0)
    );
end Chen_Kevin_ALU_Control;
