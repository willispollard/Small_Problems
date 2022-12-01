# PEDAC

# PROBLEM

# Write a method that takes one argument, an array containing integers, 
# and returns the average of all numbers in the array. 
# The array will never be empty and the numbers will always be 
# positive integers. Your result should also be an integer.

# Input:
# - Array of integers

# Output:
# - Integer

# Explicit Reqs:
# - Method takes an array of integers
# - Returns the average the integers
# - Array will never be empty
# - Integers will always be positive

# Implicit Reqs:
# - No floats


# EXAMPLES

# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40


# DATA / ALGORITHM

# Array and Integers

# - Define a method called average that takes an array of integers
#   - Calculate the sum of the integers
#   - Divide sum by number of integers (length of array)
#   - Return the result


def average(array)
  array.sum / array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40







