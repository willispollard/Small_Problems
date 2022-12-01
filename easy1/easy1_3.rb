# PEDAC

# PROBLEM

# Write a method that takes one argument, a positive integer, 
# and returns a list of the digits in the number.

# Input:
# - Postive integer

# Output:
# - Array of integers

# Explicit Reqs:
# - Integer must be positive

# Implicit Reqs:
# - Integer can be any length


# EXAMPLES

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# DATA STRUCTURES / ALGORITHM

# - Integers & Array

# - Define a method as digit_list that takes one argument
#   - Split the integer arg by calling #digits
#     - #Digits returns an array
#     - Reverse the array
#   - puts the new array


def digit_list(num)
  num.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true