library verilog;
use verilog.vl_types.all;
entity TapControllerFSM is
    generic(
        FSM_SIZE        : integer := 4;
        TEST_LOGIC_RESET: integer := 0;
        RUN_TEST_IDLE   : integer := 1;
        SELECT_DR_SCAN  : integer := 2;
        CAPTURE_DR      : integer := 3;
        SHIFT_DR        : integer := 4;
        EXIT1_DR        : integer := 5;
        PAUSE_DR        : integer := 6;
        EXIT2_DR        : integer := 7;
        UPDATE_DR       : integer := 8;
        SELECT_IR_SCAN  : integer := 9;
        CAPTURE_IR      : integer := 10;
        SHIFT_IR        : integer := 11;
        EXIT1_IR        : integer := 12;
        PAUSE_IR        : integer := 13;
        EXIT2_IR        : integer := 14;
        UPDATE_IR       : integer := 15
    );
    port(
        TCK             : in     vl_logic;
        TMS             : in     vl_logic;
        TRST            : in     vl_logic;
        state           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FSM_SIZE : constant is 1;
    attribute mti_svvh_generic_type of TEST_LOGIC_RESET : constant is 1;
    attribute mti_svvh_generic_type of RUN_TEST_IDLE : constant is 1;
    attribute mti_svvh_generic_type of SELECT_DR_SCAN : constant is 1;
    attribute mti_svvh_generic_type of CAPTURE_DR : constant is 1;
    attribute mti_svvh_generic_type of SHIFT_DR : constant is 1;
    attribute mti_svvh_generic_type of EXIT1_DR : constant is 1;
    attribute mti_svvh_generic_type of PAUSE_DR : constant is 1;
    attribute mti_svvh_generic_type of EXIT2_DR : constant is 1;
    attribute mti_svvh_generic_type of UPDATE_DR : constant is 1;
    attribute mti_svvh_generic_type of SELECT_IR_SCAN : constant is 1;
    attribute mti_svvh_generic_type of CAPTURE_IR : constant is 1;
    attribute mti_svvh_generic_type of SHIFT_IR : constant is 1;
    attribute mti_svvh_generic_type of EXIT1_IR : constant is 1;
    attribute mti_svvh_generic_type of PAUSE_IR : constant is 1;
    attribute mti_svvh_generic_type of EXIT2_IR : constant is 1;
    attribute mti_svvh_generic_type of UPDATE_IR : constant is 1;
end TapControllerFSM;
