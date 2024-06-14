library verilog;
use verilog.vl_types.all;
entity D_Controller_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        N_in            : in     vl_logic_vector(3 downto 0);
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end D_Controller_vlg_sample_tst;
