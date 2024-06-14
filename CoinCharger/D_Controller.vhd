library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_Controller is
    port (
        N_in: in std_logic_vector(3 downto 0); -- 4位输入，表示0到9的数字
        Reset, clk: in std_logic;                -- Reset为复位信号
        D_1, D_2: out std_logic_vector(3 downto 0) -- 4位输出，连接到两个数码管的译码元件
    );
end entity D_Controller;

architecture Combinational of D_Controller is
    -- 定义在架构级别，以便在所有进程中访问
    signal digit1, digit2: std_logic_vector(3 downto 0) := "0000";
    signal prev_N_in: std_logic_vector(3 downto 0) := "0000";
begin
    -- 时钟驱动的过程
    clock_proc: process(clk)
    begin


        if rising_edge(clk) then
		      if Reset = '1' then
                -- 当复位信号被激活时，重置digit1和digit2
                digit1 <= "0000";
                digit2 <= "0000";
                prev_N_in <= "0000"; -- 同时重置prev_N_in
            else
            -- 检查N_in是否上升沿触发
            if prev_N_in /= N_in and N_in /= "0000" then
                prev_N_in <= N_in;
                if Reset = '1' then
                    digit1 <= "0000";
                    digit2 <= "0000";
                else
                    if digit1 = "0000" and digit2 = "0000" then
                        digit1 <= N_in;
                    elsif digit1 /= "0000" and digit2 = "0000" then
                        digit2 <= digit1;
                        digit1 <= N_in;
                    elsif digit1 /= "0000" and digit2 /= "0000" then
                        digit2 <= digit1;
                        digit1 <= N_in;
                    end if;
                end if;
            end if;
        end if;
		  end if;
    end process clock_proc;

    -- 直接将信号赋值给输出端口
    D_1 <= digit1;
    D_2 <= digit2;
end architecture Combinational;