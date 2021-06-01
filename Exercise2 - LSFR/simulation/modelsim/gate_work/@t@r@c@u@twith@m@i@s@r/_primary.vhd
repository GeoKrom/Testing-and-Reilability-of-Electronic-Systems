library verilog;
use verilog.vl_types.all;
entity TRCUTwithMISR is
    port(
        SE              : in     vl_logic;
        CLK             : in     vl_logic;
        sign            : out    vl_logic
    );
end TRCUTwithMISR;
