library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_SignExtend_vlg_sample_tst is
    port(
        Chen_Kevin_Instruction: in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end Chen_Kevin_SignExtend_vlg_sample_tst;
