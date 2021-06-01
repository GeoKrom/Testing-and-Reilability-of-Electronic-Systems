library verilog;
use verilog.vl_types.all;
entity LFSR_8bit is
    port(
        clk             : in     vl_logic;
        LFSR            : out    vl_logic_vector(7 downto 0)
    );
end LFSR_8bit;
