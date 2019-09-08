library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Register_vlg_sample_tst is
    port(
        Chen_Kevin_Clock: in     vl_logic;
        Chen_Kevin_Read_Address_1: in     vl_logic_vector(4 downto 0);
        Chen_Kevin_Read_Address_2: in     vl_logic_vector(4 downto 0);
        Chen_Kevin_Reset: in     vl_logic;
        Chen_Kevin_WE   : in     vl_logic;
        Chen_Kevin_Write_Data: in     vl_logic_vector(31 downto 0);
        Chen_Kevin_Write_Register: in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end Chen_Kevin_Register_vlg_sample_tst;
