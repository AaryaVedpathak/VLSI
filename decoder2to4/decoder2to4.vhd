----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.06.2025 14:50:20
-- Design Name: 
-- Module Name: decoder2to4 - Behavioral
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

entity decoder2to4 is
    Port (
        a  : in  STD_LOGIC;
        b  : in  STD_LOGIC;
        x0 : out STD_LOGIC;
        x1 : out STD_LOGIC;
        x2 : out STD_LOGIC;
        x3 : out STD_LOGIC
    );
end decoder2to4;

architecture Behavioral of decoder2to4 is
    signal sel : STD_LOGIC_VECTOR(1 downto 0);
    signal y   : STD_LOGIC_VECTOR(3 downto 0);
begin
    sel <= a & b;

    -- Use with-select to assign the 4-bit output vector
    with sel select
        y <= "0001" when "00",
             "0010" when "01",
             "0100" when "10",
             "1000" when "11",
             "0000" when others;

    -- Map vector bits to individual output pins
    x0 <= y(0);
    x1 <= y(1);
    x2 <= y(2);
    x3 <= y(3);

end Behavioral;