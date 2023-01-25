# PEDAC

# PROBLEM

# In this exercise, you will write a method named xor that takes 
# two arguments, and returns true if exactly one of its arguments 
# is truthy, false otherwise. Note that we are looking for a 
# boolean result instead of a truthy/falsy value as returned by 
# || and &&.

# Input:
# - Two arguments

# Output:
# - Boolean

# Explicit Reqs:
# - Method takes two arguments and returns true only if exactly
#   one argumebt is truthy
# - Otherwise returns false
# - Result should be a boolean

# Implicit Reqs:
# - Arguments can be anything

# EXAMPLES

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

# DATA / ALGORITHM

# Booleans

# - Define method xor? that takes two args
#   - If arg1 is true and arg2 is true
#     - Return false
#   - Elsif arg1 is true and arg2 is false
#     - Return true
#   - Elsif arg1 is false and arg2 is false
#     - Return false
#   - Elsif arg1 is false and arg2 is true
#     - Return true
#   - end

# CODE

def xor?(arg1, arg2)
  if arg1 == true && arg2 == true
    return false
  elsif arg1 == true && arg2 == false
    return true
  elsif arg1 == false && arg2 == false
    return false
  elsif arg1 == false && arg2 == true
    return true
  end
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)