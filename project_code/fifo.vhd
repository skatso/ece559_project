-- The FIFO takes in 8 bits at a time, and will remove elements on a first in, first out basis.
-- The current FIFO implementation has 5 blocks

LIBRARY ieee;
USE ieee.std_logic_1164.all;
	 
entity fifo is
    port (	clk			: in std_logic;
				reset 		: in std_logic;
				ctrl_in 		: in std_logic_vector(31 downto 0);
				ctrl_write 	: in std_logic;
				lo_in			: in std_logic_vector(7 downto 0);
				hi_in 		: in std_logic_vector(7 downto 0);
				lo_write		: in std_logic;
				hi_write 	: in std_logic;
				read_next	: in std_logic;
				lo_full 		: out std_logic;
				hi_full 		: out std_logic;
				ctrl_out 	: out std_logic_vector(31 downto 0);
				out_byte	 	: out std_logic_vector(7 downto 0)
			);    
end fifo;

architecture a1 of fifo is

	component priority_fifos 
		port (
					aclr	 	: in std_logic;
					clock	 	: in std_logic;
					data	 	: in std_logic_vector(7 downto 0);
					rdreq	 	: in std_logic;
					wrreq	 	: in std_logic;
					empty	 	: out std_logic;
					full		: out std_logic;
					q	 		: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component control_register
		port (	clk			: in std_logic;
					reset 		: in std_logic;
					wri_ena 		: in std_logic;
					inputs 		: in std_logic_vector(31 downto 0);
					outputs 		: out std_logic_vector(31 downto 0)
				);    
	end component;
	
	signal lo_empty 		: std_logic;
	signal hi_empty		: std_logic;
	signal lo_read 		: std_logic;
	signal hi_read 		: std_logic;
	signal lo_out 			: std_logic_vector(7 downto 0);
	signal hi_out			: std_logic_vector(7 downto 0);
	
	begin
	
		ctrls : control_register port map (
			clk 		=> clk,
			reset 	=> reset,
			wri_ena 	=> ctrl_write,
			inputs 	=> ctrl_in,
			outputs 	=> ctrl_out
		);

		low_pri : priority_fifos  PORT MAP (
			aclr 		=> reset,
			clock	 	=> clk,
			data	 	=> lo_in,
			rdreq	 	=> lo_read,
			wrreq	 	=> lo_write,
			empty	 	=> lo_empty,
			full	 	=> lo_full,
			q	 		=> lo_out
		);
		
		high_pri : priority_fifos PORT MAP (
			aclr 		=> reset,
			clock	 	=> clk,
			data	 	=> hi_in,
			rdreq	 	=> hi_read,
			wrreq	 	=> hi_write,
			empty	 	=> hi_empty,
			full	 	=> hi_full,
			q	 		=> hi_out
		);
				
	process(read_next, hi_empty)
	begin
		if (read_next = '1' and hi_empty = '0') then
			hi_read 	<= '1';
			lo_read 	<= '0';
			out_byte <= hi_out;
		else
			hi_read 	<= '0';
			lo_read 	<= '1';
			out_byte <= lo_out;
		end if;
	end process;
	
end a1; 