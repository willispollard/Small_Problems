# PEDAC

# PROBLEM 

# Write a method that takes two strings as arguments, 
# determines the longest of the two strings, 
# and then returns the result of concatenating the shorter string, 
# the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# Input:
# - Strings

# Output:
# - String

# Explicit Reqs:
# - Method takes two strings as args
# - Method determins which string is longer
# - Method returns the result of concatenating the shorter string,
#   the longer string, then the shorter string again
# - Assume the strings are of different lengths

# Implicit Reqs:
# - Should spaces count toward length?

# EXAMPLES

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# DATA / ALGORITHM

# Strings

# - Define method short_long_short that takes two strings as arguments
#   - determine which string is longer
#   - do this by calling the #length method on both
#   - If string1 is longer
#     - Return string1 + string2 + string1
#   - Elsif string2 is longer
#     - Return string2 + string1 + string2
#   - end
# - end

# CODE

# def short_long_short(string1, string2)
#   if string1.length < string2.length
#     string1 + string2 + string1
#   else
#     string2 + string1 + string2
#   end
# end

# def short_long_short(string1, string2)
#   string1.length < string2.length ? string1 + string2 + string1 : string2 + string1 + string2
# end

def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |string| string.length }
  arr[0] + arr[1] + arr[0]
end

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"





