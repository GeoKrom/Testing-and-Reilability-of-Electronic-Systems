library verilog;
use verilog.vl_types.all;
entity TapControllerFSMtb is
    generic(
        FSM_SIZE        : integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FSM_SIZE : constant is 1;
end TapControllerFSMtb;
