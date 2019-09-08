library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Memory_vlg_sample_tst is
    port(
        Chen_Kevin_Address: in     vl_logic_vector(31 downto 0);
        Chen_Kevin_Clock: in     vl_logic;
        Chen_Kevin_Read : in     vl_logic;
        Chen_Kevin_WE   : in     vl_logic;
        Chen_Kevin_Write_Data: in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end Chen_Kevin_Memory_vlg_sample_tst;
