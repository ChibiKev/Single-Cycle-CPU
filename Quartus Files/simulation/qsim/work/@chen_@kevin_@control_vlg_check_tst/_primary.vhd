library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Control_vlg_check_tst is
    port(
        Chen_Kevin_ALU_Op: in     vl_logic_vector(1 downto 0);
        Chen_Kevin_ALUSrc: in     vl_logic;
        Chen_Kevin_Branch: in     vl_logic;
        Chen_Kevin_MemRead: in     vl_logic;
        Chen_Kevin_MemtoReg: in     vl_logic;
        Chen_Kevin_MemWrite: in     vl_logic;
        Chen_Kevin_RegDst: in     vl_logic;
        Chen_Kevin_RegWrite: in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Chen_Kevin_Control_vlg_check_tst;
