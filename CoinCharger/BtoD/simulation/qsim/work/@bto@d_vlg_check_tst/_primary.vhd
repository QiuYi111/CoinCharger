library verilog;
use verilog.vl_types.all;
entity BtoD_vlg_check_tst is
    port(
        N               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end BtoD_vlg_check_tst;
