library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Control is
    port(
        Chen_Kevin_OpCode: in     vl_logic_vector(5 downto 0);
        Chen_Kevin_Reset: in     vl_logic;
        Chen_Kevin_ALU_Op: out    vl_logic_vector(1 downto 0);
        Chen_Kevin_RegDst: out    vl_logic;
        Chen_Kevin_Branch: out    vl_logic;
        Chen_Kevin_MemRead: out    vl_logic;
        Chen_Kevin_MemtoReg: out    vl_logic;
        Chen_Kevin_MemWrite: out    vl_logic;
        Chen_Kevin_ALUSrc: out    vl_logic;
        Chen_Kevin_RegWrite: out    vl_logic
    );
end Chen_Kevin_Control;
