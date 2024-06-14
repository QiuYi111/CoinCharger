library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity 	switch is
    Port (
        clk : in STD_LOGIC; -- 时钟信号，尽管这个元件与时钟无关，但VHDL通常需要一个时钟信号
        reset : in STD_LOGIC;
        signal_in : in STD_LOGIC;
        signal_out : out STD_LOGIC
    );
end switch	;

architecture Behavioral of 	switch is
    signal prev_signal : STD_LOGIC := '0'; -- 用于存储上一次的输入信号状态
begin
    process(reset, signal_in)
    begin
        if reset = '1' then
            signal_out <= '0'; -- 复位信号到达时输出0
            prev_signal <= '0';
        elsif rising_edge(signal_in) then
            signal_out <= '1'; -- 输入信号的上升沿到达时输出1
            prev_signal <= signal_in;
        end if;
    end process;
end Behavioral;