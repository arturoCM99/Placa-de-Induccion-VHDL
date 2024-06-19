library IEEE;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;

entity Joiner is
    Port ( 
        vector_potencia_tiempo : in STD_LOGIC_VECTOR(6 downto 0);
		  LED_ENCENDIDO : in STD_LOGIC;
        vector_resultante : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Joiner;

architecture Behavioral of Joiner is
begin
    process(vector_potencia_tiempo, LED_ENCENDIDO)
    begin
        vector_resultante <= vector_potencia_tiempo & LED_ENCENDIDO;
    end process;
end Behavioral;


