# PEDAC

# PROBLEM

# Write a method that takes two arguments, a positive integer and 
# a boolean, and calculates the bonus for a given salary. 
# If the boolean is true, the bonus should be half of the salary. 
# If the boolean is false, the bonus should be 0.

# Input:
# - Integer
# - Boolean

# Output:
# - Integer

# Explicit Reqs:
# - Method takes an integer and a boolean
# - If the boolean is true, the integer is halved
# - If the boolean is false, the integer is 0

# Implicit Reqs:
# - Return should be an integer, not a float


# EXAMPLES

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000


# DATA / ALGORITHM

# Integers & Booleans

# - Define a method called calculate_bonus that takes an integer and
#   a boolean as arguments
#   - If true, return integer divided by 2
#   - Else return 0 


def calculate_bonus(salary, bonus)
  if bonus
    salary / 2
  else
    0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
