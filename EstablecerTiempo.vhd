library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

entity EstablecerTiempo is
    Port ( 
           clk     : in STD_LOGIC;
           Tiempo  : in std_logic_vector(3 downto 0);
			  cuenta: BUFFER std_logic_vector(3 downto 0) := "0000"
         );
end EstablecerTiempo;

architecture Behavioral of EstablecerTiempo is

begin
    proceso_generador: process(clk)
	 
    begin
			if Tiempo /= "0000" then
			  if rising_edge(clk) AND cuenta /= Tiempo then
					cuenta<= cuenta + 1;
					
			  end if;
			  assert(cuenta /= Tiempo)report "El tiempo se ha agotado" severity note;
			 else
				cuenta <= (others => '0');
			END IF;
    end process proceso_generador;

end Behavioral;
