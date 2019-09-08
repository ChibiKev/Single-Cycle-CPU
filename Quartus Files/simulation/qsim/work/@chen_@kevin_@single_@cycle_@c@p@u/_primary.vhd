library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Single_Cycle_CPU is
    port(
        Chen_Kevin_Op   : out    vl_logic_vector(3 downto 0);
        Chen_Kevin_Reset: in     vl_logic;
        Chen_Kevin_Clock: in     vl_logic;
        Chen_Kevin_out  : out    vl_logic_vector(31 downto 0)
    );
end Chen_Kevin_Single_Cycle_CPU;
