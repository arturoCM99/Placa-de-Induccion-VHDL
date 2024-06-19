library verilog;
use verilog.vl_types.all;
entity Clasificador_vlg_sample_tst is
    port(
        entrada1        : in     vl_logic_vector(3 downto 0);
        entrada2        : in     vl_logic_vector(3 downto 0);
        entrada3        : in     vl_logic_vector(3 downto 0);
        entrada4        : in     vl_logic_vector(3 downto 0);
        entrada5        : in     vl_logic_vector(3 downto 0);
        entrada6        : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Clasificador_vlg_sample_tst;
