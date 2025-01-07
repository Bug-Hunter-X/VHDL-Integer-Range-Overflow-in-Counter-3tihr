# VHDL Integer Range Overflow Bug

This repository demonstrates a common error in VHDL: integer range overflow in a counter.  The `buggy_counter.vhdl` file contains code with the error, while `buggy_counter_fixed.vhdl` provides a corrected version.

## The Bug

The bug lies in the definition of the `count_out` port and `internal_count` signal in the `buggy_counter` entity and architecture.  The range is specified as 0 to 15. When the counter reaches 15, an attempt to increment it will cause an overflow, potentially leading to unexpected behavior or simulation errors.

## The Solution

The corrected code in `buggy_counter_fixed.vhdl` uses a `std_logic_vector` instead of an `integer`. This avoids the integer overflow issue and provides a more robust solution for counters in VHDL.  It also includes a more robust way to handle the rollover from the maximum value back to zero. 

## How to Use

1.  Clone this repository.
2.  Simulate both `buggy_counter.vhdl` and `buggy_counter_fixed.vhdl` using your preferred VHDL simulator. Observe the different behaviors when the counter exceeds 15. 
