library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
port ( a,b,c:in std_logic;
		 carry,cout: out std_logic);
end FA;

architecture Behavioral of FA is

begin
cout<=a xor b xor c;
carry<=(a and b) or (a and c) or (b and c);
end Behavioral;