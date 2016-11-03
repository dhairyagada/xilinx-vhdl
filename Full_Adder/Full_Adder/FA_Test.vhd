LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY FA_Test IS
END FA_Test;
 
ARCHITECTURE behavior OF FA_Test IS 

    COMPONENT FA
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         carry : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';

 	--Outputs
   signal carry : std_logic;
   signal cout : std_logic;
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FA PORT MAP (
          a => a,
          b => b,
          c => c,
          carry => carry,
          cout => cout
        );

     -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a<='0';	
		b<='0';
		c<='1';
		wait for 100 ns;	
		a<='0';	
		b<='1';
		c<='0';
		wait for 100 ns;	
		a<='0';	
		b<='1';
		c<='1';
		wait for 100 ns;	
		a<='1';	
		b<='0';
		c<='0';
	   
		wait for 100 ns;	
		a<='1';	
		b<='0';
		c<='1';
		wait for 100 ns;	
		a<='1';	
		b<='1';
		c<='0';
		wait for 100 ns;	
		a<='1';	
		b<='1';
		c<='1';
		wait for 100 ns;	
      

      -- insert stimulus here 

      wait;
   end process;

END;
