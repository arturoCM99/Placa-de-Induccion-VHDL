library IEEE;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;

entity GeneradorSenal is
    Port ( clk : in STD_LOGIC;
           periodo: in integer;
           salida : out STD_LOGIC_VECTOR(3 downto 0)); -- La salida es un vector de 4 porque tendremos 4 leds.
end GeneradorSenal;

architecture Behavioral of GeneradorSenal is
    signal contador_reg : integer range 0 to 10 := 0;
    signal indice : natural := 0; 
    signal mascara_generada : STD_LOGIC_VECTOR(15 downto 0) := "1001101111011001";
    signal salida_variable : STD_LOGIC_VECTOR(3 downto 0);
    signal vector_temporal : STD_LOGIC_VECTOR(3 downto 0);
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if periodo /= 0 then
                if contador_reg = periodo then
                    contador_reg <= 0;
                    for i in vector_temporal'range loop 
                        vector_temporal(i) <= mascara_generada(indice);
                    end loop;
                    salida_variable <= vector_temporal;
                    indice <= (indice + 1) mod 16;  
                else
                    contador_reg <= contador_reg + 1;
                end if;
            else
                salida_variable <= (others => '0');
            end if;
        end if;
    end process;

    salida <= salida_variable;
end Behavioral;









