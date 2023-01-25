# PROBLEM

# Write a method that returns a list of all substrings of a string 
# that start at the beginning of the original string. The return 
# value should be arranged in order from shortest to longest substring.

# Input: String
# Output: Array of substrings

# Explicit rules:
# - Method takes a string and returns a list of all substrings that
#   start at the beginning of the original string
#   - Return value should be arranged in order of shortest to longest
#     substring

# Implicit rules:
# - 

# EXAMPLES

# leading_substrings('abc') == ['a', 'ab', 'abc']
# leading_substrings('a') == ['a']
# leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# DATA / ALGORITHM

# Define a method called leading_substrings that takes a string
# - Create a variable called substrings = []
# - Convert the string to an array
# - For each character in that array
#   - add the range of index of 0 to the index of the current character
# - Return substrings.map.join

# DEF leading_substrings(string)
#   SET substrings = []
#   characters = string.chars

#   CALL characters.each_with_index
#     substring << characters.slice(0, index + 1)
#   END

#   RETURN substrings.map { |arr| arr.join }.flatten
# END

# CODE

def leading_substrings(string)
  substrings = []
  characters = string.chars

  1.upto(characters.size) do |count|
    substrings << characters.slice(0, count)
  end
  # characters.each_index do |index|
  #   substrings << characters.slice(0, index + 1)
  # end

  substrings.map { |arr| arr.join }.flatten
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

