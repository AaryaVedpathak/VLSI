----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.01.2025 14:31:50
-- Design Name: 
-- Module Name: tb_mux4to1 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_mux4to1 is
--  Port ( );
end tb_mux4to1;

architecture Behavioral of tb_mux4to1 is
component mux4to1 is
    Port ( a,b,c,d : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (1 downto 0);
           f : out STD_LOGIC);
end component;

signal a : std_logic :='0';
signal b : std_logic :='0';
signal c : std_logic :='0';
signal d : std_logic :='0';
signal s : std_logic_vector(1 downto 0) := (others => '0');
signal f : std_logic :='0';

begin
uut : mux4to1 port map(
a=>a,
b=>b,
c=>c,
d=>d,
s=>s,
f=>f);

stim_proc : process
begin
a<='1';
b<='0';
c<='1';
d<='0';
s<="00";
wait for 10ns;
s<="01";
wait for 10ns;
s<="10";
wait for 10ns;
s<="11";
wait for 10ns;
end process;
end Behavioral;
