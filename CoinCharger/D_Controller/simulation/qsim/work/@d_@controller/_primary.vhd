library verilog;
use verilog.vl_types.all;
entity D_Controller is
    port(
        N_in            : in     vl_logic_vector(3 downto 0);
        Reset           : in     vl_logic;
        clk             : in     vl_logic;
        D_1             : out    vl_logic_vector(3 downto 0);
        D_2             : out    vl_logic_vector(3 downto 0)
    );
end D_Controller;
