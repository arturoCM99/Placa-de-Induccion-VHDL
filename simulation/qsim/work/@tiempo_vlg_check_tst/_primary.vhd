library verilog;
use verilog.vl_types.all;
entity Tiempo_vlg_check_tst is
    port(
        Salida_Tiempo   : in     vl_logic_vector(0 to 1);
        sampler_rx      : in     vl_logic
    );
end Tiempo_vlg_check_tst;
