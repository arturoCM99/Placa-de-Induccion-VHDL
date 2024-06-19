library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY CambioZonas IS
PORT (K1: IN std_logic;
		encendido: IN BOOLEAN;  -- entrada "encendido"
		Estado_Zona: OUT std_logic_vector(2 DOWNTO 0)
);
END CambioZonas;

ARCHITECTURE descripcion OF CambioZonas
	IS TYPE estado IS (zona0,zona1,zona2,zona3);
	CONSTANT Primera_zona: std_logic_vector(2 DOWNTO 0):="001";
	CONSTANT Segunda_Zona: std_logic_vector(2 DOWNTO 0):="010";
	CONSTANT Tercera_zona: std_logic_vector(2 DOWNTO 0):="100";
	CONSTANT Zona_apagada: std_logic_vector(2 DOWNTO 0):="000";
	SIGNAL presente: estado:=zona0;
	SIGNAL presente_anterior: estado:=zona0;


BEGIN
maquina: PROCESS(K1) 
BEGIN
	IF encendido= true
	THEN 
		IF K1='1' AND K1'event
			THEN CASE presente IS
			
				WHEN zona1=>
						presente<= zona2;
				WHEN zona2=>
						presente<= zona3;
				WHEN zona3=>
						presente<=zona0;
				WHEN zona0=>
						presente<= zona1;
			END CASE;
			presente_anterior<= presente;
		END IF;
	END IF;
	
END PROCESS maquina;
	
salida: PROCESS(presente) -- Activación de las salidas. 
BEGIN
	CASE presente IS 

      WHEN zona1=>
         Estado_Zona<=Primera_zona;
      WHEN zona2=>
         Estado_Zona<=Segunda_Zona;
      WHEN zona3=> 
         Estado_Zona<=Tercera_zona;
		WHEN zona0=>
			Estado_Zona<=Zona_apagada;
	END CASE;
END PROCESS salida;
END;
	

	