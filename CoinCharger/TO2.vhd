library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity TO2 is
    port(
    clk_i:IN STD_LOGIC;
    clk_o:OUT STD_LOGIC);
end TO2;

architecture behavior of TO2 is
signal count:STD_LOGIC_VECTOR(4 DOWNTO 0):="00001";
signal N_i:STD_LOGIC_VECTOR(4 DOWNTO 0):="00010"; 
signal clk_temp:STD_LOGIC:='0';
begin
    process(clk_i)
    begin
        if(clk_i'EVENT and clk_i='1')then  
            if (count=N_i)then
                count<="00001";
                clk_temp<='1';
            else
                count<=count+1;
                clk_temp<='0';
            end if;
        end if;
    end process;    
    clk_o<=clk_temp;
end behavior;