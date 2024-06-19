library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Tiempo IS
  PORT (
    K0: IN std_logic;
	 POT_TIEMP: IN std_logic;
    Salida_Tiempo1: BUFFER std_logic_vector(3 downto 0)
  );
END Tiempo;

ARCHITECTURE descripcion OF Tiempo IS
  -- No need to declare the variable here

BEGIN
  maquina: PROCESS(K0)
    VARIABLE un_minuto: std_logic_vector(3 downto 0) := "0000";
  BEGIN

  IF rising_edge(K0) then
 
		 IF POT_TIEMP = '0' THEN 
				IF un_minuto = "1111" THEN
				un_minuto := "0000"; 
				ELSE
				un_minuto := un_minuto + 1;
				END IF;
			 Salida_Tiempo1 <= un_minuto;
		
		 else
			 Salida_Tiempo1 <= (others => '0');
		 end if;
	 
	 
	END IF; 
	 
  END PROCESS maquina;

END descripcion;
