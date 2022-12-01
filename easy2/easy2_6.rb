# PEDAC

# PROBLEM

# Print all odd numbers from 1 to 99, inclusive, to the console, 
# with each number on a separate line.

# Input:
# - NA

# Output:
# - Integers

# Explicit Reqs:
# - Print all odd numbers from 1 to 99
# - Each number on a separate line

# Implicit Reqs:
# - include 1 and 99

# EXAMPLES

# n/a

# DATA / ALGORITHM

# Integers

# - Set range 1 to 99
#   - Invoke each method to iterate through and return odd numbers
#   - puts numbers


# (1..99).each do |num|
#   if num.odd?
#     puts num
#   else
#     next
#   end
# end

array = (1..99).to_a
iterator = 0

loop do
  if array[iterator].to_i.odd?
    puts array[iterator]
  end

  break if iterator > 99
  iterator += 1
end







