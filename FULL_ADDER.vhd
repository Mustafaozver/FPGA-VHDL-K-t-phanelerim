-- Mustafa ÖZVER VHDL Kütüphaneleri
-- Tam toplayıcı devre FULL_ADDER
Library IEEE;
Use IEEE.std_logic_1164.All;

Entity FULL_ADDER is
 Port(
  A: In std_logic;
  B: In std_logic;
  Cin: In std_logic;
  Cout: Out std_logic;
  S: Out std_logic;
 );
 End FULL_ADDER;

Architecture Yapi of FULL_ADDER is
 Signal axorb: std_logic;
 Signal cinandaxorb: std_logic;
 Begin
  axorb <= A xor B;
  S <= axorb xor Cin;
  cinandaxorb <= Cin and axorb;
  Cout <= cinandaxorb or (A and B);
End Yapi;
  
  