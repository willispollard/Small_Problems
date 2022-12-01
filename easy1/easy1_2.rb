# PEDAC

# PROBLEM

# Write a method that takes one integer argument, which may be positive, 
# negative, or zero. This method returns true if the number's absolute 
# value is odd. You may assume that the argument is a valid integer value

# Input:
# - One integer

# Output:
# - Boolean

# Explicit Reqs:
# - Method takes one integer
# - Integer may be positive, negative, or zero
# - Method returns true f number's absolute value is odd
# - Cannot use #odd? or #even? methods

# Implicit Reqs:
# - If num's value is even the return value should be false

# EXAMPLES

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# DATA STRUCTURE / ALGORITHM

# - Create Method called "is_odd?"
# - Within the "is_odd?":
#   - call #odd? on the #abs of the integer
#   - this will return true if the int is odd and false if it is not

def is_odd?(num)
  num % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true












 