library verilog;
use verilog.vl_types.all;
entity Translate_vlg_sample_tst is
    port(
        n               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Translate_vlg_sample_tst;
