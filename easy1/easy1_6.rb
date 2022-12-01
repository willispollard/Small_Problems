# PEDAC

# PROBLEM

# Write a method that takes one argument, a string containing one or 
# more words, and returns the given string with words that contain 
# five or more characters reversed. Each string will consist of 
# only letters and spaces. Spaces should be included only when more than 
# one word is present.

# Input:
# - string

# Output:
# - string

# Explicit Reqs:
# - Method takes one argument
# - Argument is a string of one or more words
# - Words in the string that contain 5 or more chars get reversed
# - Letters and spaces only in the string
# - Spaces should be included only if there is more than one word

# Implicit Reqs:
# - Words less than 5 chars long dont get changed
# - The string itself should not be reversed
# - Strings are case sensitive

# EXAMPLES

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS


# DATA / ALGORITHM

# Strings only

# - Define a method reverse_words that takes one string as an argument
#   - Split the string into a new array variable
#   - If the length of an element is greater or equal to 5, 
#     call the #reverse method to it
#   - Call the #join method on the array with a " " to convert it to a str
#   - puts the new str 


def reverse_words(string)
  elements = string.split

  elements.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  
  elements.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS








