library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Single_Cycle_CPU_Board_vlg_sample_tst is
    port(
        Chen_Keivn_Reset: in     vl_logic;
        Chen_Kevin_Clock: in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Chen_Kevin_Single_Cycle_CPU_Board_vlg_sample_tst;
