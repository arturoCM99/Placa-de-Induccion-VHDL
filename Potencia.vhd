library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Potencia IS
PORT (
    K0: IN std_logic;
	 POT_TIEMP: IN std_logic;
    Salida_Potencia1: OUT std_logic_vector(1 DOWNTO 0)
);
END Potencia;

ARCHITECTURE descripcion OF Potencia IS
    TYPE estado IS (potencia0, potencia1, potencia2, potencia3);
    CONSTANT Sin_potencia: std_logic_vector(1 DOWNTO 0) := "00";
    CONSTANT Potencia_baja: std_logic_vector(1 DOWNTO 0) := "01";
    CONSTANT Potencia_media: std_logic_vector(1 DOWNTO 0) := "10";
    CONSTANT Potencia_alta: std_logic_vector(1 DOWNTO 0) := "11";
    SIGNAL potencia_presente: estado := potencia0;
    SIGNAL potencia_anterior: estado := potencia0;

BEGIN
    maquina: PROCESS(K0) -- Lo primero es definir la secuencia mediante una máquina de estados: 
    BEGIN
        IF K0 = '1' AND K0'event THEN
            CASE potencia_presente IS
                WHEN potencia1 =>
                    potencia_presente <= potencia2;
                WHEN potencia2 =>
                    potencia_presente <= potencia3;
                WHEN potencia3 =>
                    potencia_presente <= potencia0;
                WHEN potencia0 =>
                    potencia_presente <= potencia1;
            END CASE;
            potencia_anterior <= potencia_presente;
        END IF;
    END PROCESS maquina;

    salida: PROCESS(potencia_presente, POT_TIEMP) -- Activación de las salidas. 
    BEGIN
        IF POT_TIEMP='1' THEN
            CASE potencia_presente IS
                WHEN potencia1 =>
                    Salida_Potencia1 <= Potencia_baja;
                WHEN potencia2 =>
                    Salida_Potencia1 <= Potencia_media;
                WHEN potencia3 =>
                    Salida_Potencia1 <= Potencia_alta;
                WHEN potencia0 =>
                    Salida_Potencia1 <= Sin_potencia;
            END CASE;
        ELSE
            Salida_Potencia1 <= Sin_potencia;
        END IF;
    END PROCESS salida;
END;

