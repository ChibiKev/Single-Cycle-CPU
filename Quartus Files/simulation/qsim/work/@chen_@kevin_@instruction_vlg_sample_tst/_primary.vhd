library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Instruction_vlg_sample_tst is
    port(
        Chen_Kevin_Read_Address: in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end Chen_Kevin_Instruction_vlg_sample_tst;
