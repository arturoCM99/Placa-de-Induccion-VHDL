library verilog;
use verilog.vl_types.all;
entity Clasificador_vlg_check_tst is
    port(
        salida          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Clasificador_vlg_check_tst;
