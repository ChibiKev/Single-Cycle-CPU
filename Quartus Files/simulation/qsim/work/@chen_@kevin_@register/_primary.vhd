library verilog;
use verilog.vl_types.all;
entity Chen_Kevin_Register is
    port(
        Chen_Kevin_Clock: in     vl_logic;
        Chen_Kevin_Reset: in     vl_logic;
        Chen_Kevin_WE   : in     vl_logic;
        Chen_Kevin_Write_Register: in     vl_logic_vector(4 downto 0);
        Chen_Kevin_Write_Data: in     vl_logic_vector(31 downto 0);
        Chen_Kevin_Read_Address_1: in     vl_logic_vector(4 downto 0);
        Chen_Kevin_Read_Data_1: out    vl_logic_vector(31 downto 0);
        Chen_Kevin_Read_Address_2: in     vl_logic_vector(4 downto 0);
        Chen_Kevin_Read_Data_2: out    vl_logic_vector(31 downto 0)
    );
end Chen_Kevin_Register;
