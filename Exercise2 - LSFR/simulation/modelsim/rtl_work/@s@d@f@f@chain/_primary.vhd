library verilog;
use verilog.vl_types.all;
entity SDFFChain is
    port(
        CLK             : in     vl_logic;
        DI1             : in     vl_logic;
        DI2             : in     vl_logic;
        DI3             : in     vl_logic;
        DI4             : in     vl_logic;
        SI              : in     vl_logic;
        SE              : in     vl_logic;
        SO1             : out    vl_logic;
        SO2             : out    vl_logic;
        SO3             : out    vl_logic;
        SO4             : out    vl_logic
    );
end SDFFChain;
