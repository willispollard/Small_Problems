# PEDAC

# PROBLEM

# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

# Input: A string and an integer

# Output: Strings

# Explicit Reqs:
# - Write a method that takes two args
#   - Args are a string and positive integer
# - Method prints the string as many times as the value of the integer

# Implicit Reqs: 
# - Integer should not be zero 

# EXAMPLES

# repeat('Hello', 3)

# > Hello
# > Hello
# > Hello

# DATA STRUCTURE / ALGORITHM

# Strings

# - Create a method called "repeat" that take two arguments
# - Within the method:
#   - puts the string as many times as the value of the integer



def repeat(string, num)
  num.times { |num| puts string }
end

repeat('Hello', 3)





