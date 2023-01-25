# PROBLEM

# Write a method that takes a number as an argument. If the 
# argument is a positive number, return the negative of that 
# number. If the number is 0 or negative, return the original number.

# Input:
# - Integer
# Output:
# - Integer

# Explicit Reqs:
# - Method takes a number, positive or negative, and returns 
#   that number as positive.
#   - If number is 0 returns 0

# Implicit Reqs:

# EXAMPLES

# negative(5) == -5
# negative(-3) == -3
# negative(0) == 0      # There's no such thing as -0 in ruby

# PSEUDO-CODE

# DEF negative(num)
#   IF num <= 0
#     RETURN num
#   IF num > 0 
#     RETURN num * -1
#   END
# END

def negative(num)
  num > 0 ? -num : num
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0 