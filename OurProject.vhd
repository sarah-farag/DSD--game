LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY OurProject IS

PORT(clk1:IN STD_LOGIC;buttons: IN STD_LOGIC_VECTOR(1 DOWNTO 0);outl,outm :OUT STD_LOGIC_VECTOR(6 DownTO 0);clkout: OUT STD_LOGIC);

END OurProject;

ARCHITECTURE f OF OurProject IS
SIGNAL oclk: STD_LOGIC;
SIGNAL ol,om: STD_LOGIC_VECTOR(3 DownTO 0);
COMPONENT clk_generator
PORT(clk_50M:IN STD_LOGIC ;clk_1Hz:out STD_LOGIC);
END COMPONENT;

COMPONENT seven_seg_dec
port(input:IN std_logic_vector(3 DOwnTO 0);output:out std_logic_vector(6 DownTO 0));
End COMPONENT;

COMPONENT sixty_counter
PORT(clk :IN STD_LOGIC; rp:IN STD_LOGIC_VECTOR(1 DOWNTO 0); countl,countm :OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;

BEGIN

gen: clk_generator port map(clk1,oclk);
six: sixty_counter port map(oclk,buttons,ol,om);
sevenl: seven_seg_dec port map(ol,outl);
sevenm: seven_seg_dec port map(om,outm);

END f;