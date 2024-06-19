library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EstablecerPotencia is
    Port ( 
           T       : in std_logic_vector(0 to 1);
           periodo_out : out integer
         );
end EstablecerPotencia;

architecture Behavioral of EstablecerPotencia is
     CONSTANT Potencia_baja: integer:=  10;
     CONSTANT Potencia_media: integer:= 20;
     CONSTANT Potencia_alta: integer:= 40;
	  CONSTANT Potencia_nula: integer:= 0;

begin
    proceso_generador: process(T)
    begin
            case T is
                when "01" => 
                    periodo_out <= Potencia_baja;
                when "10" =>	
                    periodo_out <= Potencia_media;
                when "11" => 
                    periodo_out <= Potencia_alta;
                when others =>
                    periodo_out <= Potencia_nula; 
            end case;
    end process proceso_generador;

end Behavioral;
