library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Add_By_Four is
    port(
        Chen_Kevin_a    : in     vl_logic_vector(31 downto 0);
        Chen_Kevin_result: out    vl_logic_vector(31 downto 0)
    );
end Chen_Kevin_Add_By_Four;
