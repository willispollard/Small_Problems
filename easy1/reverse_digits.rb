# PEP

# PROBLEM

# Write a method that takes a positive integer as an argument 
# and returns that number with its digits reversed.

# Input:
# - Positive Integer
# Output:
# - Integer with digits reverse

# Explicit Reqs:
# - Method takes a positive integer
#   - Returns that number with digits reversed

# Implicit Reqs:
# - There should be no leading zeros in the return value

# EXAMPLES

# reversed_number(12345) == 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1

# PSEUDO-CODE

# Define a method that takes an integer
#   - Integer should be split into an array of its digits
#   - array should be reversed
#   - array should be rejoined back into an integer
#   - Method should return new integer

# DEF reversed_number(num)
#   new_num = num.digits.reverse.join
#   new_num
# END

def reversed_number(num)
  new_num = num.digits.join.to_i
  new_num
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1

