# PEDAC

# PROBLEM
# Write a method that returns true if the string passed as an argument 
# is a palindrome, false otherwise. A palindrome reads the same 
# forward and backward. For this exercise, case matters as does 
# punctuation and spaces.

# Input:
# - String

# Output:
# - Boolean

# Explicit Reqs:
# - Method returns true if argument is a palindrome
#   - Method returns false if not
# - Palindrome reads the same forward and backward
# - Case, punctuation, and spaces all matter

# Implicit Reqs:
# - All characters matter

# EXAMPLES

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# DATA / ALGORITHM

# Strings & Booleans

# - Define method palindrome? that takes one argument
#   - if argument is equal to argument in reverse
#     - Return true
#   - end
# - end

# CODE

# def palindrome?(string)
#   string == string.reverse
# end

# puts palindrome?('madam') == true
# puts palindrome?('Madam') == false          # (case matters)
# puts palindrome?("madam i'm adam") == false # (all characters matter)
# puts palindrome?('356653') == true

# def palindromic_array?(array)
#   array == array.reverse
# end

# puts palindromic_array?([3,4,3]) == true
# puts palindromic_array?("madam") == true


def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  string.downcase == string.downcase.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false





