library IEEE;
use IEEE.std_logic_1164.all; -- 引入std_logic_1164包

entity scanner is
  port (
    clk_50 : in std_logic; -- 将clk_50的类型改为std_logic
    r1, r2, r3, r4 : out std_logic -- 将输出端口的类型改为std_logic
  );
end entity scanner;

architecture scan of scanner is
  begin
    scan: process is
      variable n: integer := 1;
    begin
      wait until clk_50'event and clk_50 = '1'; -- 使用'event和'1'来检测时钟上升沿
      if n = 1 then
        r1 <= '1';
        r2 <= '0';
        r3 <= '0';
        r4 <= '0';
      elsif n = 2 then
        r1 <= '0';
        r2 <= '1';
        r3 <= '0';
        r4 <= '0';
      elsif n = 3 then
        r1 <= '0';
        r2 <= '0';
        r3 <= '1';
        r4 <= '0';
      elsif n = 4 then
        r1 <= '0';
        r2 <= '0';
        r3 <= '0';
        r4 <= '1';
        n := 0;
      end if;
      n := n + 1;
    end process scan;
end architecture scan;