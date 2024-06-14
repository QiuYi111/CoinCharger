library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BtoD is
  port(
    n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7, n_8, n_9 : in bit;  -- 10位输入，每个位对应一个十进制数字
    N : out STD_LOGIC_VECTOR(3 downto 0)  -- 4位输出，表示新的编码规则下的数字
  );
end entity BtoD;

architecture BtD of BtoD is
begin
  process(n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7, n_8, n_9)
  begin
    -- 根据新的编码规则，设置默认输出为"0000"，表示无输入
    N <= "0000";
    
    -- 检查每个输入位，如果为'1'，则设置相应的输出编码
    if n_0 = '1' then
      N <= "0001";
    elsif n_1 = '1' then
      N <= "0010";
    elsif n_2 = '1' then
      N <= "0011";
    elsif n_3 = '1' then
      N <= "0100";
    elsif n_4 = '1' then
      N <= "0101";
    elsif n_5 = '1' then
      N <= "0110";
    elsif n_6 = '1' then
      N <= "0111";
    elsif n_7 = '1' then
      N <= "1000";
    elsif n_8 = '1' then
      N <= "1001";
    elsif n_9 = '1' then
      N <= "1010";
    end if;
  end process;
end architecture BtD;