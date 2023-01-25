# PROBLEM

# Write a method that takes a string argument, and returns true 
# if all of the alphabetic characters inside the string are 
# uppercase, false otherwise. Characters that are not alphabetic 
# should be ignored.

# Input:
# - String
# Output:
# - Boolean

# Explicit Reqs:
# - Method takes a string and returns true if all alphabetic 
#   characters are uppercase
#   - Characters that are not alphabetic should be ignored

# Implicit Reqs:

# EXAMPLES

# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

# PSEUDO-CODE

# DEF uppercase?(string)
#   string == string.upcase
# END

def uppercase?(string)
  string == string.upcase
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
