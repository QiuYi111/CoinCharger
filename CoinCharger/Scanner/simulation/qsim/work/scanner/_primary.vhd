library verilog;
use verilog.vl_types.all;
entity scanner is
    port(
        clk_50          : in     vl_logic;
        r1              : out    vl_logic;
        r2              : out    vl_logic;
        r3              : out    vl_logic;
        r4              : out    vl_logic
    );
end scanner;
