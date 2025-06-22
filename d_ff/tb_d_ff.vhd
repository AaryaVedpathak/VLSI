----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.01.2025 15:04:28
-- Design Name: 
-- Module Name: tb_d_ff - Behavioral
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

entity tb_d_ff is
--  Port ( );
end tb_d_ff;

architecture Behavioral of tb_d_ff is
component d_ff
port(d : in STD_LOGIC;
     clk : in  STD_LOGIC;
     rst : in STD_LOGIC;
     q : out STD_LOGIC);
end component;
signal d, clk, rst : STD_LOGIC := '0';
signal q : STD_LOGIC;    
constant clk_period : time := 10ns;

begin
clk_gen : process
begin 
clk<='1';
wait for clk_period / 2;
clk<='0';
wait for clk_period / 2;

end process clk_gen;

uut : d_ff port map(
    d => d ,
    clk => clk ,
    rst => rst ,
    q => q);

stim_proc : process
begin

rst<='1';
wait for 10ns;
rst<='0';
wait for 10ns;


d<='1';
wait for 10ns;
d<='0';
wait for 10ns;
d<='1';
wait for 10ns;
d<='0';
wait for 10ns;

rst<='1';
wait for 10ns;
rst<='0';
wait for 10ns;

end process;
end Behavioral;
