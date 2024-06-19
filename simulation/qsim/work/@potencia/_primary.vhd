library verilog;
use verilog.vl_types.all;
entity Potencia is
    port(
        K0              : in     vl_logic;
        Z1              : in     vl_logic_vector(0 to 1);
        Z2              : in     vl_logic_vector(0 to 1);
        Z3              : in     vl_logic_vector(0 to 1);
        Salida_Potencia1: out    vl_logic_vector(0 to 1);
        Salida_Potencia2: out    vl_logic_vector(0 to 1);
        Salida_Potencia3: out    vl_logic_vector(0 to 1)
    );
end Potencia;
