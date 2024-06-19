library verilog;
use verilog.vl_types.all;
entity Tiempo is
    port(
        K0              : in     vl_logic;
        Z1              : in     vl_logic_vector(31 downto 0);
        Z2              : in     vl_logic_vector(31 downto 0);
        Z3              : in     vl_logic_vector(31 downto 0);
        Salida_Tiempo1  : out    vl_logic_vector(0 to 3);
        Salida_Tiempo2  : out    vl_logic_vector(0 to 3);
        Salida_Tiempo3  : out    vl_logic_vector(0 to 3)
    );
end Tiempo;
