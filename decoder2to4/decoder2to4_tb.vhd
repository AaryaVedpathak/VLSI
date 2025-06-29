----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.06.2025 14:51:19
-- Design Name: 
-- Module Name: decoder2to4_tb - Behavioral
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

entity decoder2to4_tb is
end decoder2to4_tb;

architecture behavior of decoder2to4_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component decoder2to4
        Port (
            a  : in  STD_LOGIC;
            b  : in  STD_LOGIC;
            x0 : out STD_LOGIC;
            x1 : out STD_LOGIC;
            x2 : out STD_LOGIC;
            x3 : out STD_LOGIC
        );
    end component;

    -- Testbench signals
    signal a  : STD_LOGIC := '0';
    signal b  : STD_LOGIC := '0';
    signal x0, x1, x2, x3 : STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: decoder2to4 Port Map (
        a  => a,
        b  => b,
        x0 => x0,
        x1 => x1,
        x2 => x2,
        x3 => x3
    );

    -- Stimulus process
    stim_proc: process
    begin   
        while true loop
        -- Test case 1: 00 -> x0 = 1
        a <= '0'; b <= '0';
        wait for 10 ns;

        -- Test case 2: 01 -> x1 = 1
        a <= '0'; b <= '1';
        wait for 10 ns;

        -- Test case 3: 10 -> x2 = 1
        a <= '1'; b <= '0';
        wait for 10 ns;

        -- Test case 4: 11 -> x3 = 1
        a <= '1'; b <= '1';
        wait for 10 ns;
        end loop;
        -- End simulation
        wait;
    end process;

end behavior;
