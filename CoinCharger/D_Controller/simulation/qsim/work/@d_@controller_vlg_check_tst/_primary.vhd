library verilog;
use verilog.vl_types.all;
entity D_Controller_vlg_check_tst is
    port(
        D_1             : in     vl_logic_vector(3 downto 0);
        D_2             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end D_Controller_vlg_check_tst;
