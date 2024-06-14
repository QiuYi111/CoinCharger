library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_ARITH.all;
use ieee.std_logic_unsigned.all;

entity CHARGE_MUSIC_PLAY is  
            port(
            Director_i : IN STD_LOGIC; 
            Director_o: OUT STD_LOGIC_VECTOR(11 downto 0);
				START: IN STD_LOGIC
            );
end CHARGE_MUSIC_PLAY;

architecture music of CHARGE_MUSIC_PLAY is 
signal count :integer:=0;
signal Director_temp: STD_LOGIC_VECTOR(11 downto 0) :="000000000000";
signal str:integer:=0;
TYPE MUSIC1 is array(0 to 57) of std_logic_vector(11 downto 0);
begin
    process(Director_i,START)
    begin
      if(rising_edge(Director_i) and START='1')then
		  if(count>14)then
				count<=0;
		  else
			   count<=count+1;
		  end if;
		  if(count=0)then Director_temp<="010111101101" ;--3
		  elsif(count=1)then Director_temp<="010111101101" ;--3
		  elsif(count=2)then Director_temp<="010111101101" ;--3
		  elsif(count=3)then Director_temp<="010111101101" ;--3
		  elsif(count=4)then Director_temp<="010110011000" ;--4
		  elsif(count=5)then Director_temp<="010110011000" ;--4
		  elsif(count=6)then Director_temp<="010011111100" ;--5
		  elsif(count=7)then Director_temp<="010011111100" ;--5
		  elsif(count=8)then Director_temp<="010011111100" ;--5
		  elsif(count=9)then Director_temp<="010011111100" ;--5
		  elsif(count=10)then Director_temp<="010110011000" ;--4
		  elsif(count=11)then Director_temp<="010110011000" ;--4
		  elsif(count=12)then Director_temp<="010111101101" ;--3
		  elsif(count=13)then Director_temp<="010111101101" ;--3
		  elsif(count=14)then Director_temp<="011010100111" ;--2
		  elsif(count=15)then Director_temp<="011010100111" ;--2
		  elsif(count=16)then Director_temp<="011101110111" ;--中音1
		  elsif(count=17)then Director_temp<="011101110111" ;--中音1
		  elsif(count=18)then Director_temp<="011101110111" ;--中音1
		  elsif(count=19)then Director_temp<="011101110111" ;--中音1
		  elsif(count=20)then Director_temp<="011010100111" ;--2
		  elsif(count=21)then Director_temp<="011010100111" ;--2
		  elsif(count=22)then Director_temp<="010111101101" ;--3
		  elsif(count=23)then Director_temp<="001011110110" ;--3
		  elsif(count=24)then Director_temp<="010111101101" ;--3
		  elsif(count=25)then Director_temp<="001011110110" ;--3
		  elsif(count=26)then Director_temp<="011010100111" ;--2
		  elsif(count=27)then Director_temp<="011010100111" ;--2
		  elsif(count=28)then Director_temp<="011010100111" ;--2
		  --if(count=0)then Director_temp<="111011101110" ;--低音1     
        --if(count=0)then Director_temp<="110101001101" ;--低音2
        --if(count=0)then Director_temp<="101111011010" ;--3
        --if(count=0)then Director_temp<="101100101111" ;--4
        --if(count=0)then Director_temp<="100111110111" ;--5
        --if(count=0)then Director_temp<="100011100001" ;--6
        --if(count=0)then Director_temp<="011111101001" ;--7
            
        --if(count=0)then Director_temp<="011101110111" ;--中音1
        --if(count=0)then Director_temp<="011010100111" ;--2
        --if(count=0)then Director_temp<="010111101101" ;--3
        --if(count=0)then Director_temp<="010110011000" ;--4
        --if(count=0)then Director_temp<="010011111100" ;--5
        --if(count=0)then Director_temp<="010001110000" ;--6
        --if(count=0)then Director_temp<="001111110100" ;--7
            
        --if(count=0)then Director_temp<="001110111100" ;--高音15
        --if(count=0)then Director_temp<="001101010011" ;--16
        --if(count=0)then Director_temp<="001011110110" ;--17
        --if(count=0)then Director_temp<="001011001100" ;--18
        --if(count=0)then Director_temp<="001001111110" ;--19
        --if(count=0)then Director_temp<="001000111000" ;--20
        --if(count=0)then Director_temp<="000111111010" ;--21
		  end if;
		 end if;
	 end process;
	 Director_o<=Director_temp;
end music;
		  