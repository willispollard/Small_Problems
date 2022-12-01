# PEDAC

# PROBLEM

# Write a method that takes one argument, a string, 
# and returns a new string with the words in reverse order.

# Input:
# - String

# Output:
# - String 

# Explicit Reqs:
# - Method argument is a string
# - Method returns the string in reverse order

# Implicit Reqs:
# - Strings are case sensitive

# EXAMPLES

# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# DATA / ALGORITHM

# Strings

# - Define a method called reverse_sentence which takes in a string arg
#   - Set a new array called elements
#   - Set a new a str = ""
#   - Split the string into individual elements assign them to elements
#   - Call the #reverse method on the elements array
#   - Call a block that appends each word in elements to str
#   - Return str


def reverse_sentence(string)
  elements = string.split
  str = ""

  elements.reverse.each do |word|
    str << elements.pop + " "
  end
  str.strip
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''