# PROBLEM

# Write a method that takes an Array of integers as input, 
# multiplies all the numbers together, divides the result by the 
# number of entries in the Array, and then prints the result 
# rounded to 3 decimal places. Assume the array is non-empty.

# Input: Array of integers
# Output: Float

# Explicit rules:
# - Method takes an array of integers
#   - Multiplies all numbers together, divides result by the number
#     of entries, then prints the result rounded to 3 decimal places
# - Assume the array is non-empty

# Implicit rules:

# EXAMPLES

# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# DATA / ALGORITHM

# Define a method called show_multiplicative_average that takes
# an array of integers
# - Multiply every number of the array together
# - Convert result to a float
# - Take the result of this and divide it by the size of the array
# - Round the result to three decimal places

# CODE

def show_multiplicative_average(array)
  result = array.inject(:*).to_f / array.size
  puts "The result is #{format("%0.3f", result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667



