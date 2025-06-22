----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.01.2025 13:42:57
-- Design Name: 
-- Module Name: alu_4bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_4bit is
    Port ( n1,n2 : in STD_LOGIC_VECTOR (3 downto 0);
           op : in STD_LOGIC_VECTOR (2 downto 0);
           res : out STD_LOGIC_VECTOR (3 downto 0);
           flag : out STD_LOGIC);
end alu_4bit;

architecture Behavioral of alu_4bit is
begin
process(n1,n2,op)
variable temp : std_logic_vector(4 downto 0);
begin
flag<='0';
case op is 
when "000"=>
temp :=('0' &n1)+n2;
res <=temp(3 downto 0);
flag <=temp(4);
when"001" =>
if(n1>n2) then
res <= n1 - n2;
else 
res <= n2 - n1;
end if;
when "010" =>
res <= n1 nand n2;
when "011" =>
res <= n2 nor n2;
when "100" =>
res <= not n2;
when "101" =>
res <= n1 or n2;
when "110" =>
res <= n1 xor n2;
when others =>
res <= n1;
end case;
end process;
end Behavioral;
