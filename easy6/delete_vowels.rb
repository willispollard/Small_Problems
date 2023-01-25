# PEDAC

# PROBLEM

# Write a method that takes an array of strings, and returns 
# an array of the same string values, except with the vowels 
# (a, e, i, o, u) removed.

# Input:
# - Array of strings
# Output:
# - Array of strings

# Explicit Reqs:
# - Method should take an array of strings and return an
#   array of the same string values with the vowels removed

# Implicit Reqs:

# EXAMPLES

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# DATA / ALGORITHM

# Arrays and Strings

# - Define constant VOWELS = ['a', 'e', 'i', 'o', 'u']
# - Define method remove_vowels that takes an array of strings
#   - for each string in array
#     - call chars
#     - delete char if VOWELS includes that char
#     - join chars back together
#   - return array

# CODE

# VOWELS = ['a', 'e', 'i', 'o', 'u']

# def remove_vowels(str_array) 
#   new_arr = []
#   str_array.each do |str|
#     new_str = str.chars.select do |char|
#       char unless VOWELS.include?(char.downcase)
#     end

#     new_arr << new_str.join
#   end

#   new_arr
# end

def remove_vowels(strings)
  strings.map { |str| str.delete('aeiouAEIOU') }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


