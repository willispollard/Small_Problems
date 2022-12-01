# PEDAC

# PROBLEM

# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# Input:
# - Integer

# Output:
# - string of alternating 1s and 0s

# Explicit Reqs:
# - Return string should always start with 1
# - Length of the string should match the given integer
# - Method takes a positive integer as an argument

# Implicit Reqs:


# EXAMPLES

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'


# DATA / ALGORITHM

# Integers and Strings

# - Define a method call stringy that takes an one positive integer
#   - Set a string = ''
#   - Set iterator = 0
#   - Create a loop
#     - For the value of the given integer append a 1 or 0 to the string
#       - If iterator is even append a 0
#       - Else append a 1
#     - Add 1 to the iterator
#     - Break loop once iterator is equal to num


def stringy(num)
  string = ''
  iterator = 0

  loop do
    if iterator.odd? 
      string << "0"
    else
      string << "1"
    end

    iterator += 1
    break if iterator == num
  end

  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
