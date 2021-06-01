library verilog;
use verilog.vl_types.all;
entity MISR_16bits is
    port(
        clk             : in     vl_logic;
        misr_input      : in     vl_logic;
        MISR            : out    vl_logic_vector(15 downto 0)
    );
end MISR_16bits;
