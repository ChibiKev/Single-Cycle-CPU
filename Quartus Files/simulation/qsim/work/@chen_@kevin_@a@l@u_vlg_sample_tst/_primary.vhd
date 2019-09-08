library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_ALU_vlg_sample_tst is
    port(
        Chen_Kevin_a    : in     vl_logic_vector(31 downto 0);
        Chen_Kevin_b    : in     vl_logic_vector(31 downto 0);
        Chen_Kevin_op   : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Chen_Kevin_ALU_vlg_sample_tst;
