LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY sixty_counter IS
PORT(clk :IN STD_LOGIC; rp:IN STD_LOGIC_VECTOR(1 DOWNTO 0); countl,countm :OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END sixty_counter;

ARCHITECTURE ar OF sixty_counter IS
SIGNAL l,m :INTEGER:=0;
SIGNAL lu,mu:UNSIGNED(3 DOWNTO 0);
BEGIN
PROCESS(clk,rp)
BEGIN
IF(rp ="10") THEN   --pause
l <= l;
m <= m;
ELSIF(rp = "01" OR rp="00") THEN   --rst
l <= 0;
m <= 0;
ELSIF(rp = "11") THEN             --counter is working
IF(clk'EVENT AND clk = '1') THEN
IF(m=5 AND l=9) THEN 
m <=0;
l <=0;
ELSIF(l=9) THEN
l <=0;
m <= m+1;
ELSE
l <= l+1;
END IF;
END IF;
END IF;

END PROCESS;
mu <= to_unsigned(m,4);
lu <= to_unsigned(l,4);
countl <= std_logic_vector(lu);
countm <= std_logic_vector(mu);
END ar;