library verilog;
use verilog.vl_types.all;
entity MiniDin is
    port(
        ZONA            : in     vl_logic_vector(0 to 2);
        DIN1            : in     vl_logic;
        DIN2            : in     vl_logic;
        DIN3            : in     vl_logic;
        Z1              : out    vl_logic_vector(31 downto 0);
        Z2              : out    vl_logic_vector(31 downto 0);
        Z3              : out    vl_logic_vector(31 downto 0);
        encendido       : in     vl_logic
    );
end MiniDin;
