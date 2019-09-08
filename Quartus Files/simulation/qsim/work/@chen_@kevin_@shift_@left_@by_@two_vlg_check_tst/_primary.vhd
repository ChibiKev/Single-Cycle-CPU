library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Shift_Left_By_Two_vlg_check_tst is
    port(
        Chen_Kevin_result: in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end Chen_Kevin_Shift_Left_By_Two_vlg_check_tst;
