# PEDAC

# PROBLEM

# Given a string of words separated by spaces, write a method that 
# takes this string of words and returns a string in which the 
# first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and 
# that the string will always contain at least one word. You may 
# also assume that each string contains nothing but words and spaces.

# Input:
# - String

# Output:
# - String

# Explicit Reqs:
# - Method takes a string of words
#   - Method returns a string in which the first and last letters of
#     each word are swapped
# - Assume each word contains at least one letter and the string will
#   always contain at least one word
# - Assume each string only contains words and spaces

# Implicit Reqs:
# - Characters are case sensitive

# EXAMPLES

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# DATA / ALGORITHM

# Strings

# - Define method called swap that takes a string as an argument
#   - Split string into individual words in an array
#   - Initialize swapped_string = []
#   - Initialize variable last_letter = ''
#   - Initialize variable first_letter = ''
#   - For each word in the array 
#     - first_letter = word[0]
#     - last_letter = word[-1]
#     - word[0] = last_letter
#     - word[-1] = first_letter
#     - swapped_string << word
#   - Return swapped_string.join


# CODE

def swap(string)
  swapped_words = []
  first_letter = ''
  last_letter = ''

  string.split(' ').map do |word|
    word[0], word[-1] = word[-1], word[0]
    # first_letter = word[0]
    # last_letter = word[-1]
    # word[0] = last_letter
    # word[-1] = first_letter
    swapped_words << word
  end

  swapped_words.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'


# Further Exploration

# def swap_first_last_characters(a, b)
#   a, b = b, a
# end

# def swap(string)
#   result = string.split.map do |word|
#     swap_first_last_characters(word[0], word[-1]) # This just returns
                                                    # the swapped letters
#   end
#   result.join(' ')
# end

# puts swap('Oh what a wonderful day it is')
# puts swap('Abcde') == 'ebcdA'
# puts swap('a') == 'a'



