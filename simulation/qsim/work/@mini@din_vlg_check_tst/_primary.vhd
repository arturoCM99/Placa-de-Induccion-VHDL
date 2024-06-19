library verilog;
use verilog.vl_types.all;
entity MiniDin_vlg_check_tst is
    port(
        Z1              : in     vl_logic_vector(31 downto 0);
        Z2              : in     vl_logic_vector(31 downto 0);
        Z3              : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end MiniDin_vlg_check_tst;
