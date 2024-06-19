library verilog;
use verilog.vl_types.all;
entity bloquegeneral_vlg_check_tst is
    port(
        estado_zona     : in     vl_logic_vector(0 to 2);
        pin_name2       : in     vl_logic;
        pin_name3       : in     vl_logic;
        Pot1            : in     vl_logic_vector(0 to 1);
        Pot2            : in     vl_logic_vector(0 to 1);
        Pot3            : in     vl_logic_vector(0 to 1);
        sampler_rx      : in     vl_logic
    );
end bloquegeneral_vlg_check_tst;
