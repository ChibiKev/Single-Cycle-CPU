library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Memory_vlg_check_tst is
    port(
        Chen_Kevin_Read_Data: in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end Chen_Kevin_Memory_vlg_check_tst;
