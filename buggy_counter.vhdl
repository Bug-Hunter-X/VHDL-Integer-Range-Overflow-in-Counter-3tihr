```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity buggy_counter is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count_out : out integer range 0 to 15 -- potential issue here
  );
end entity;

architecture behavioral of buggy_counter is
  signal internal_count : integer range 0 to 15 := 0;
begin
  process (clk, rst)
  begin
    if rst = '1' then
      internal_count <= 0;
    elsif rising_edge(clk) then
      internal_count <= internal_count + 1;
    end if;
  end process;
  count_out <= internal_count; 
end architecture;
```