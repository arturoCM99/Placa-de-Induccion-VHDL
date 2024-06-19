library verilog;
use verilog.vl_types.all;
entity MiniDin_vlg_sample_tst is
    port(
        DIN1            : in     vl_logic;
        DIN2            : in     vl_logic;
        DIN3            : in     vl_logic;
        encendido       : in     vl_logic;
        ZONA            : in     vl_logic_vector(0 to 2);
        sampler_tx      : out    vl_logic
    );
end MiniDin_vlg_sample_tst;
