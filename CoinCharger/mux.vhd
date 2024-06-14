library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    Port (
        A : in STD_LOGIC_VECTOR(3 downto 0);  -- 第一个输入信号
        B : in STD_LOGIC_VECTOR(3 downto 0);  -- 第二个输入信号
        S : in STD_LOGIC;  -- 选择信号
        Y : out STD_LOGIC_VECTOR(3 downto 0)  -- 输出信号
    );
end mux;

architecture Behavioral of mux is
begin
    Y <= A when S = '0' else B; -- 根据选择信号S的值选择A或B作为输出
end Behavioral;
