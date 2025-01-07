```vhdl
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity buggy_counter_fixed is
  port (
    clk : in std_logic;
    rst : in std_logic;
    count_out : out std_logic_vector(3 downto 0) -- Use std_logic_vector
  );
end entity;

architecture behavioral of buggy_counter_fixed is
  signal internal_count : unsigned(3 downto 0) := (others => '0');
begin
  process (clk, rst)
  begin
    if rst = '1' then
      internal_count <= (others => '0');
    elsif rising_edge(clk) then
      internal_count <= internal_count + 1;
    end if;
  end process;
  count_out <= std_logic_vector(internal_count);
end architecture;
```