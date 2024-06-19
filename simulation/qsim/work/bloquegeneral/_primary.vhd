library verilog;
use verilog.vl_types.all;
entity bloquegeneral is
    port(
        pin_name3       : out    vl_logic;
        K0              : in     vl_logic;
        K1              : in     vl_logic;
        DIN1            : in     vl_logic;
        DIN2            : in     vl_logic;
        DIN3            : in     vl_logic;
        Encendido       : in     vl_logic;
        pin_name2       : out    vl_logic;
        estado_zona     : out    vl_logic_vector(0 to 2);
        Pot1            : out    vl_logic_vector(0 to 1);
        Pot2            : out    vl_logic_vector(0 to 1);
        Pot3            : out    vl_logic_vector(0 to 1)
    );
end bloquegeneral;
