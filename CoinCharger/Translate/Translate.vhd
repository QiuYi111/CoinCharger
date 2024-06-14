library IEEE;
use IEEE.std_logic_1164.all;

entity Translate is
  port (
    n: in std_logic_vector(3 downto 0); -- 4位向量，表示十进制数0到9
    a, b, c, d, e, f, g: out std_logic -- 数码管的控制信号
  );
end Translate;

architecture basic of Translate is
begin
  Trans: process(n) is
  begin
    case n is
      when "0001" => -- 表示十进制的0
        a <= '0'; b <= '0'; c <= '0'; d <= '0'; e <= '0'; f <= '0'; g <= '1';
      when "0010" => -- 表示十进制的1
        a <= '1'; b <= '1'; c <= '0'; d <= '1'; e <= '1'; f <= '1'; g <= '1';
      when "0011" => -- 表示十进制的2
        a <= '0'; b <= '1'; c <= '0'; d <= '0'; e <= '1'; f <= '0'; g <= '0';
      when "0100" => -- 表示十进制的3
        a <= '0'; b <= '1'; c <= '0'; d <= '0'; e <= '0'; f <= '1'; g <= '0';
      when "0101" => -- 表示十进制的4
        a <= '1'; b <= '1'; c <= '0'; d <= '0'; e <= '1'; f <= '1'; g <= '0';
      when "0110" => -- 表示十进制的5
        a <= '0'; b <= '0'; c <= '1'; d <= '0'; e <= '0'; f <= '1'; g <= '0';
      when "0111" => -- 表示十进制的6
        a <= '0'; b <= '0'; c <= '1'; d <= '1'; e <= '0'; f <= '1'; g <= '0';
      when "1000" => -- 表示十进制的7
        a <= '0'; b <= '1'; c <= '1'; d <= '1'; e <= '1'; f <= '1'; g <= '1';
      when "1001" => -- 表示十进制的8
        a <= '0'; b <= '0'; c <= '0'; d <= '0'; e <= '0'; f <= '0'; g <= '0';
      when "1010" => -- 表示十进制的9
        a <= '0'; b <= '0'; c <= '0'; d <= '1'; e <= '0'; f <= '0'; g <= '0';
      when "0000" => -- 无输入，不更新显示
        -- 保持默认值'1'，表示所有段都不亮
      when others =>
        -- 无效输入，保持默认值'1'，表示所有段都不亮
    end case;
  end process Trans;
end architecture basic;