library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Control_vlg_sample_tst is
    port(
        Chen_Kevin_OpCode: in     vl_logic_vector(5 downto 0);
        Chen_Kevin_Reset: in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Chen_Kevin_Control_vlg_sample_tst;
