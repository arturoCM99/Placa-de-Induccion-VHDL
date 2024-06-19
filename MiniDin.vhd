library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY MiniDin IS
PORT (
	 ZONA: IN std_logic_vector(2 DOWNTO 0);
	 DIN1, DIN2,DIN3 : IN BOOLEAN;
	 encendido: IN BOOLEAN;  -- entrada "encendido"
	 POT_TIEMP: OUT std_logic :='0'
	 
    
	 
);
END MiniDin;

ARCHITECTURE descripcion OF MiniDin IS
BEGIN
    maquina: PROCESS(encendido,ZONA, DIN1, DIN2, DIN3)
    BEGIN
			POT_TIEMP <= '0';
        IF encendido = true THEN
            IF ZONA = "001" and DIN1 = true THEN
						POT_TIEMP <= '1';
					  
            elsif ZONA = "010" and DIN2 = true THEN	  
					  POT_TIEMP <= '1';
            elsif ZONA = "100" and DIN3 = true THEN	
						POT_TIEMP <= '1';
            END IF;
        END IF;
    END PROCESS maquina;
END descripcion;