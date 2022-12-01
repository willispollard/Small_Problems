# PEDAC

# PROBLEM

# Write a method that takes one argument, a positive integer, 
# and returns the sum of its digits.

# Input:
# - Positive integer

# Output:
# - Sum of digits

# Explicit Reqs:
# - Method takes one argument
# - Integer must be positive
# - Return value is the sum of the digits in the integer

# Implicit Reqs:
# - Sum value should also be an integer, not a float

# EXAMPLES

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45


# DATA / ALGORITHM

# Integers

# - Define a method called sum that takes an integer as an argument
#   - Call the #digits method on the given integer
#   - Call the sum method of the digits
#   - Return the sum


def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45








