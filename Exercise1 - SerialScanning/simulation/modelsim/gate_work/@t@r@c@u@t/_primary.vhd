library verilog;
use verilog.vl_types.all;
entity TRCUT is
    port(
        SI              : in     vl_logic;
        SE              : in     vl_logic;
        CLK             : in     vl_logic;
        SO              : out    vl_logic
    );
end TRCUT;
