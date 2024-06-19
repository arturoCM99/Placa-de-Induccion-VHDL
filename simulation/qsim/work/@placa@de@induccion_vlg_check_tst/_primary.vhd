library verilog;
use verilog.vl_types.all;
entity PlacaDeInduccion_vlg_check_tst is
    port(
        inte            : in     vl_logic_vector(31 downto 0);
        LEDS            : in     vl_logic_vector(7 downto 0);
        sal_s1          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end PlacaDeInduccion_vlg_check_tst;
