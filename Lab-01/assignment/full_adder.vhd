--/*
--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  Designed by Ali Mohammadpour(@alimpk)
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

-----------------------------------------------------------
---  Module Name: Full Adder
---  Description: Full Adder using Half Adders
-----------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity full_adder is
	port (
		a    : in  std_logic;
		b    : in  std_logic;
		cin  : in  std_logic;
		sum  : out std_logic;
		cout : out std_logic
	);
end full_adder;

architecture full_adder_arc of full_adder is
	signal w1 : std_logic;
	signal w2 : std_logic;
	signal w3 : std_logic;
   
begin
 
	w1 <= a xor b;
	w2 <= w1 and cin;
	w3 <= a and b;
 
	sum   <= w1 xor cin;
	cout <= w2 or w3;

end full_adder_arc;
