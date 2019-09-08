library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_ALU_Control_vlg_sample_tst is
    port(
        Chen_Kevin_ALU_Op: in     vl_logic_vector(1 downto 0);
        Chen_Kevin_Function: in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end Chen_Kevin_ALU_Control_vlg_sample_tst;
