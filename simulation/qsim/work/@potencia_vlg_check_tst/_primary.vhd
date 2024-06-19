library verilog;
use verilog.vl_types.all;
entity Potencia_vlg_check_tst is
    port(
        Salida_Potencia1: in     vl_logic_vector(0 to 1);
        Salida_Potencia2: in     vl_logic_vector(0 to 1);
        Salida_Potencia3: in     vl_logic_vector(0 to 1);
        sampler_rx      : in     vl_logic
    );
end Potencia_vlg_check_tst;
