library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clasificador is
    Port ( 
			pulso_potencia: in std_logic_vector(3 downto 0);
		  entrada_pot: in std_logic_vector(1 downto 0);
        entrada_tiempo: in std_logic_vector(3 downto 0);
		  POT_TIEMP: IN std_logic;
		  ZONA: IN std_logic_vector(2 downto 0);
        salida   : out STD_LOGIC_VECTOR(6 downto 0)
    );
end Clasificador;

architecture Behavioral of Clasificador is
	constant dosceros: std_logic_vector(1 downto 0) := "00";
	constant ceros : std_logic_vector(2 downto 0) := "000";
begin
    process(pulso_potencia, entrada_tiempo, entrada_pot, POT_TIEMP, ZONA)
    begin
        if POT_TIEMP = '1' THEN
				if pulso_potencia = "1111" then
					salida <=  dosceros & entrada_pot & ZONA;
				else
					salida <=  dosceros & entrada_pot & ceros;
				end if;
		  else 
				salida <=  entrada_tiempo & ZONA;
        end if;
    end process;
end Behavioral;
