library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_LPM_MULTIPLY_vlg_sample_tst is
    port(
        dataa           : in     vl_logic_vector(31 downto 0);
        datab           : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end Chen_Kevin_LPM_MULTIPLY_vlg_sample_tst;
