library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_LPM_MULTIPLY is
    port(
        dataa           : in     vl_logic_vector(31 downto 0);
        datab           : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end Chen_Kevin_LPM_MULTIPLY;
