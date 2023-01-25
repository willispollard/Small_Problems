# PEDAC

# PROBLEM

# Create a method that takes two arguments, multiplies them together, 
# and returns the result.

# Input:
# - Integers

# Output:
# - Integer

# Explicit Reqs:
# - Method takes two arguments
# - Method performs multiplication on arguments
# - Method returns result

# Implicit Reqs:
# - Arguments should be integers

# EXAMPLES

# multiply(5, 3) == 15

# DATA / ALGORITHM

# Integers

# - Define method multiply that takes two arguments
#   - return the product of the two arguments

# CODE

def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3)
puts multiply([5,4], 3)