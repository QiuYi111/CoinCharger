library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DisCounter is
  port(
    D_1, D_2 : in std_logic_vector(3 downto 0);  -- 投币数额的个位和十位，按照新的编码规则
    clk_1, confirm : in std_logic;
    Ds_1, Ds_2 : out std_logic_vector(3 downto 0);  -- 倒计时显示的个位和十位，按照新的编码规则
    sing : out std_logic
  );
end entity DisCounter;

architecture discount of DisCounter is
  signal countdown_enable : boolean := false;
  signal time_left : integer := 0;
  signal display : integer := 0;
  
  -- 函数，将整数转换为新的编码规则
  function encode_value(value : integer) return std_logic_vector is
    variable encoded : std_logic_vector(3 downto 0) := "0000";
  begin
    if value = 0 then
      encoded := "0000";
    elsif value <= 9 then
      encoded := std_logic_vector(to_unsigned(value + 1, 4));  -- 加1是因为'0000'表示无输入
    end if;
    return encoded;
  end function encode_value;
  
begin
  countdown: process(clk_1, confirm)
    variable update_display : boolean := false;
  begin
    if rising_edge(clk_1) then
      if confirm = '1'  then
        countdown_enable <= true;
        -- 使用新的编码规则解析输入
        time_left <= (to_integer(unsigned(encode_value(to_integer(unsigned(D_2))))) * 10) + to_integer(unsigned(encode_value(to_integer(unsigned(D_1))))) - 1;  -- 减1是因为显示时需要加1
        display <= time_left;
        if time_left > 40 then
          time_left <= 40;
        end if;
        update_display := true;  -- 标记需要更新显示
      end if;
      
      if countdown_enable and update_display then
        if time_left > 0 then
          time_left <= time_left - 1;
          display <= time_left;
        else
          countdown_enable <= false;
          display <= 0;
          update_display := false;  -- 倒计时结束，不需要更新显示
        end if;
      end if;
      
      -- 更新显示值，使用新的编码规则
      Ds_1 <= encode_value(display mod 10);
      Ds_2 <= encode_value(display / 10);
      
      -- 更新sing信号
      if time_left = 0 then
        sing <= '0';
      else
        sing <= '1';
      end if;
    end if;
  end process countdown;
end architecture discount;