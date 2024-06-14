library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Coin is
    port(
    clk_i:IN STD_LOGIC;
    N_i:  IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    clk_o:OUT STD_LOGIC);
end Coin;

architecture behavior of Coin is
signal count:STD_LOGIC_VECTOR(11 DOWNTO 0):="000000000001";
signal clk_temp:STD_LOGIC:='0';
begin
    process(clk_i)
    begin
        if(clk_i'EVENT and clk_i='1')then  
            if (count=N_i)then
                count<="000000000001";
                clk_temp<='1';
            else
                count<=count+1;
                clk_temp<='0';
            end if;
        end if;
    end process;    
    clk_o<=clk_temp;
end behavior;