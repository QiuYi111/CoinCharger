library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Timer is
    port(
        clk_i: IN STD_LOGIC;
        clk_50: OUT STD_LOGIC;
        clk_1: OUT STD_LOGIC
    );
end Timer;

architecture behavior of Timer is
    signal count1: STD_LOGIC_VECTOR(24 DOWNTO 0) := (others => '0');
    signal count2: STD_LOGIC_VECTOR(24 DOWNTO 0) := (others => '0');
    signal clk_temp_50: STD_LOGIC := '0';
    signal clk_temp_1: STD_LOGIC := '0';
    signal N_50: STD_LOGIC_VECTOR(25 DOWNTO 0) := "00000011110100001001000000"; -- 1,000,000
    signal N_1: STD_LOGIC_VECTOR(25 DOWNTO 0) := "10111110101111000010000000";  -- 50,000,000
begin
    process(clk_i)
    begin
        if rising_edge(clk_i) then  
            if (count1 = N_50(24 DOWNTO 0)) then
                count1 <= (others => '0');
                clk_temp_50 <= not clk_temp_50; -- Toggle the clock signal
            else
                count1 <= count1 + 1;
            end if;
            
            if (count2 = N_1(24 DOWNTO 0)) then
                count2 <= (others => '0');
                clk_temp_1 <= not clk_temp_1; -- Toggle the clock signal
            else
                count2 <= count2 + 1;
            end if;
        end if;
    end process;
    
    clk_50 <= clk_temp_50;
    clk_1 <= clk_temp_1;
end behavior;