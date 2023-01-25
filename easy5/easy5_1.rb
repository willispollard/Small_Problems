# PEDAC

# PROBLEM

# Write a method that determines and returns the ASCII string value 
# of a string that is passed in as an argument. The ASCII string 
# value is the sum of the ASCII values of every character in the 
# string. (You may use String#ord to determine the ASCII value of 
# a character.)

# Input:
# - String

# Output:
# - Integer

# Explicit Reqs:
# - Write a method that takes a string and returns the ASCII value
#   - The returned value is the sum of the ASCII value of each character
#     in the string
# - Use string.ord to determine the ASCII value of a character

# Implicit Reqs:
# - Empty string equals zero

# EXAMPLES

# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# DATA / ALGORITHM

# Strings and Integers

# - Define a method ascii_value that takes a string as an argument
#   - initialize a variable characters and set it to calling #chars 
#     on the input string
#   - initialize variable total and set it equal to 0
#   - For each char in the array
#     - total = total + char.ord
#   - return total

# CODE

def ascii_value(string)
  characters = string.chars
  total = 0

  characters.each { |char| total += char.ord }

  total
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0



