library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Register_vlg_check_tst is
    port(
        Chen_Kevin_Read_Data_1: in     vl_logic_vector(31 downto 0);
        Chen_Kevin_Read_Data_2: in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end Chen_Kevin_Register_vlg_check_tst;
