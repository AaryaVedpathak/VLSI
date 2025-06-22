----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.01.2025 13:46:55
-- Design Name: 
-- Module Name: test_alu - Behavioral
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

entity test_alu is
end test_alu;
architecture Behavioral of test_alu is
  COMPONENT alu_4bit
    PORT(
         n1 : IN  std_logic_vector(3 downto 0);
         n2 : IN  std_logic_vector(3 downto 0);
         op : IN  std_logic_vector(2 downto 0);
         res : OUT  std_logic_vector(3 downto 0);
         flag : OUT  std_logic
        );
    END COMPONENT;     
   signal n1 : std_logic_vector(3 downto 0) := (others => '0');----Inputs
   signal n2 : std_logic_vector(3 downto 0) := (others => '0');
   signal op : std_logic_vector(2 downto 0) := (others => '0');
   signal res : std_logic_vector(3 downto 0);               -----Outputs
   signal flag : std_logic; 
BEGIN
    uut: alu_4bit PORT MAP (
          n1 => n1,               -- Instantiate the Unit Under Test (UUT)
          n2 => n2,
          op => op,
          res => res,
          flag => flag
        );  
      stim_proc: process                    -- Stimulus process
                 begin		
     		n1<="1101";
		n2<="0011";
		op<="000";
		wait for  10 ns;
		op<="001";
		wait for 10 ns;
		op<="010";
		wait for 10 ns;
		op<="011";
		wait for 10 ns;
		op<="100";
		wait for 10 ns;
		op<="101";
		wait for 10 ns ;
		op<="110";
		wait for 10 ns;
		op<="111";
		wait for 10 ns ;    
   end process;
end ;
