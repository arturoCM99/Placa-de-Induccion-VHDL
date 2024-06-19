library verilog;
use verilog.vl_types.all;
entity Clasificador is
    port(
        entrada1        : in     vl_logic_vector(3 downto 0);
        entrada2        : in     vl_logic_vector(3 downto 0);
        entrada3        : in     vl_logic_vector(3 downto 0);
        entrada4        : in     vl_logic_vector(3 downto 0);
        entrada5        : in     vl_logic_vector(3 downto 0);
        entrada6        : in     vl_logic_vector(3 downto 0);
        salida          : out    vl_logic_vector(3 downto 0)
    );
end Clasificador;
