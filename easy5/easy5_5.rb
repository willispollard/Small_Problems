# PEDAC

# PROBLEM

# Given a string that consists of some words (all lowercased) and 
# an assortment of non-alphabetic characters, write a method that 
# returns that string with all of the non-alphabetic characters 
# replaced by spaces. If one or more non-alphabetic characters 
# occur in a row, you should only have one space in the result 
# (the result should never have consecutive spaces).

# Input:
# - String

# Output:
# - String

# Explicit Reqs:
# - Write a method that takes a string of some words and an assortment
#   of non-alphabetic characters
#   - Words should all be lowercased
#   - Method should return the string with all non-alphabetic 
#     characters replaced with spaces
#     - If multiple non-alphabetic characters occur in a row, you 
#       they should return only one space
#     - The result should never have consecutive spaces

# Implicit Reqs:


# EXAMPLES

# cleanup("---what's my +*& line?") == ' what s my line '

# DATA / ALGORITHM

# String

# - Define a method cleanup that takes a string as an argument
#   - call chars on the string to put every char in an array
#   - on that array call map
#     - If char is not a letter or a space, map it to a space
#   - Join characters back into a string
#   - Call squeeze on any spaces in the array

# CODE

def cleanup(string)
  clean_characters = string.chars.map do |char|
    if ('a'..'z').include?(char)
      char
    else
      char = ' '
    end
  end

  clean_characters.join.squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
puts cleanup("_()   ok computer^^  *__")




