library verilog;
use verilog.vl_types.all;
entity PlacaDeInduccion_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        DIN1            : in     vl_logic;
        DIN2            : in     vl_logic;
        DIN3            : in     vl_logic;
        Encendido       : in     vl_logic;
        K0              : in     vl_logic;
        K1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PlacaDeInduccion_vlg_sample_tst;
