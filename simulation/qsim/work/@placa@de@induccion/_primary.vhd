library verilog;
use verilog.vl_types.all;
entity PlacaDeInduccion is
    port(
        inte            : out    vl_logic_vector(31 downto 0);
        K0              : in     vl_logic;
        DIN1            : in     vl_logic;
        DIN2            : in     vl_logic;
        DIN3            : in     vl_logic;
        Encendido       : in     vl_logic;
        K1              : in     vl_logic;
        LEDS            : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        sal_s1          : out    vl_logic_vector(3 downto 0)
    );
end PlacaDeInduccion;
