library verilog;
use verilog.vl_types.all;
entity Potencia_vlg_sample_tst is
    port(
        K0              : in     vl_logic;
        Z1              : in     vl_logic_vector(0 to 1);
        Z2              : in     vl_logic_vector(0 to 1);
        Z3              : in     vl_logic_vector(0 to 1);
        sampler_tx      : out    vl_logic
    );
end Potencia_vlg_sample_tst;
