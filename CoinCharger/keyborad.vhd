-- 标准的VHDL库
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 假设实体名为keyboard
entity keyborad is
    port(
	 clk_s : in STD_LOGIC;
        -- 行信号
        R1, R2, R3, R4 : in STD_LOGIC;
        -- 列信号
        c1, c2, c3, c4 : in STD_LOGIC;
        -- 按键输出信号
        N0, N1, N2, N3, N4, N5, N6, N7, N8, N9 : out STD_LOGIC;
        start, confirm, reset ,SHUTDOWN: out STD_LOGIC
    );
end entity;

-- 架构名为behavior
architecture behavior of keyborad is
    -- 定义一个信号来作为秒级计数器
    signal second_counter : integer := 0;
    -- 定义一个信号来检测是否有按键输入
    signal key_input : STD_LOGIC := '0';
begin
    -- 按键扫描的进程
    process(clk_s)
    begin
        if rising_edge(clk_s) then
            -- 默认所有按键输出为'0'
            if (R1 = '1' or R2 = '1' or R3 = '1' or R4 = '1') and
            (c1 = '1' or c2 = '1' or c3 = '1' or c4 = '1') then
                key_input <= '1';
            end if;
            

            -- 每次秒级时钟上升沿，检查是否有按键输入
            if key_input = '1' then
                -- 如果有按键输入，重置计数器和按键输入信号
                second_counter <= 0;
                key_input <= '0';
            else
                -- 如果没有按键输入，计数器增加
                second_counter <= second_counter + 1;
            end if;
            
            -- 检查计数器是否达到30秒
            if second_counter >= 30 then
                SHUTDOWN <= '1';
            else
                SHUTDOWN <= '0';
            end if;
        end if;
    end process;
	 process(R1,R2,R3,R4)
	 begin
	 -- 第4行按键逻辑
            if R4 = '1' then
                if c1 = '1' then start <= '1';
                elsif c2 = '1' then N3 <= '1';
                elsif c3 = '1' then N2 <= '1';
                elsif c4 = '1' then N1 <= '1';
                end if;
            end if;

            -- 第3行按键逻辑
            if R3 = '1' then
                if c4 = '1' then N4 <= '1';
                elsif c3 = '1' then N5 <= '1';
                elsif c2 = '1' then N6 <= '1';
                elsif c1 = '1' then confirm <= '1';
                end if;
            end if;

            -- 第2行按键逻辑
            if R2 = '1' then
                if c4 = '1' then N7 <= '1';
                elsif c3 = '1' then N8 <= '1';
                elsif c2 = '1' then N9 <= '1';
                elsif c1 = '1' then reset <= '1';
                end if;
            end if;

            -- 第1行按键逻辑
            if R1 = '1' then
					 start<='0';
					N0<='0';
					N1<='0';
					N2<='0';
					N3<='0';
					N4<='0';
					N5<='0';
					N6<='0';
					N7<='0';
					N8<='0';
					N9<='0';
					reset<='0';
					start<='0';
					confirm<='0';
                if c4 = '1' then N0 <= '1';
                -- 第1行的第2、3、4列为空，无需操作
                end if;
            end if;
		end process;
end architecture behavior;
