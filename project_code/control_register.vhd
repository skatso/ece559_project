-- The FIFO takes in 8 bits at a time, and will remove elements on a first in, first out basis.
-- The current FIFO implementation has 5 blocks

LIBRARY ieee;
USE ieee.std_logic_1164.all;
	 
entity control_register is
    port (	clk			: in std_logic;
				reset 		: in std_logic;
				wri_ena 		: in std_logic;
				inputs 		: in std_logic_vector(31 downto 0);
				outputs 		: out std_logic_vector(31 downto 0)
			);    
end control_register;

architecture a1 of control_register is
	
	begin
	
	process(inputs, clk, reset, wri_ena)
	begin
		if (reset = '1') then
			outputs <= "00000000000000000000000000000000";
		elsif (clk = '1' and wri_ena = '1') then
			outputs <= inputs;
		end if;
	end process;
	
end a1; 