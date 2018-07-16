-- Mustafa ÖZVER VHDL Kütüphaneleri
-- D flip flop devresi DFF
Library IEEE;
Use IEEE.std_logic_1164.All;

Entity DFF is
	Port(
		D: In std_logic;
		Reset: In std_logic;
		Clock: In std_logic;
		Q: Out std_logic;
	);
End DFF;

Architecture Yapi of DFF is
	Begin
		Process(Clock) Begin
			if (rising_edge(Clock)) then
				if (Reset = '0') then
					Q <= '0';
				else
					Q <= D;
				end if;
			end if;
    end process;
End Yapi;
