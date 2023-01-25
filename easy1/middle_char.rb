# PEP

# PROBLEM

# Write a method that takes a non-empty string argument, and 
# returns the middle character or characters of the argument. 
# If the argument has an odd length, you should return exactly 
# one character. If the argument has an even length, you should 
# return exactly two characters.

# Input:
# - String
# Output:
# - String

# Explicit Reqs:
# - Method takes a non-empty string
#   - Returns the middle character(s) of the argument.
#   - If the argument has an odd length, you should return one charcter
#   - If the length is even you should return two characters

# Implicit Reqs:

# EXAMPLES

# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

# PSEUDO-CODE

# Define a method that takes a string
#   - Make a case statement
#     - Case is string
#     - When the string is odd
#       - Start a loop
#         - pop the last character off string
#         - delete the first character off string
#         - break when the length of the string equals 1
#     - When the string is even
#       - Start a loop
#         - pop the last character off string
#         - delete the first character off string
#         - break when length of string equals 2

# DEF center_of(string)
#   SET case = string
#   WHEN string.odd?
#     LOOP
#       string.pop
#       string.delete_at(0)
#       BREAK IF string.length == 1
#     END
#   WHEN string.even?
#     LOOP
#       string.pop
#       string.delete_at(0)
#       BREAK IF string.length == 2
#     END
#   END
# END

def center_of(string)
  string = string.chars
  if string.length.odd?
    loop do
      break if string.length == 1
      string.pop
      string.delete_at(0)
    end
  elsif string.length.even?
    loop do
      break if string.length == 2
      string.pop
      string.delete_at(0)
    end
  end

  string.join
end


puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
