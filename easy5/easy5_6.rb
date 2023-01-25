# PEDAC

# PROBLEM

# Write a method that takes a string with one or more space separated 
# words and returns a hash that shows the number of words of 
# different sizes.

# Words consist of any string of characters that do not include a 
# space.

# Input:
# - String

# Output:
# - Hash

# Explicit Reqs:
# - Method takes a string with one or more space separated words
#   - Method returns a hash that shows the number of words of 
#     different sizes
#     - Words consist of any string of characters that do not 
#       include a space

# Implicit Reqs:
# - If a word has a non-alphabetic character attached to it,
#   then that character contributes to its length

# EXAMPLES

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# DATA / ALGORITHM

# Strings, Hashes, and Integers

# - Define a method word_sizes that takes a string of words
#   - Initialize a variable called results = {}
#   - Call split on the string to separate each word into an array
#   - Count the letters in each word in the array and append the key
#     and value to result

# CODE

def word_sizes(str)
  results = {}
  word_arr = str.split

  word_arr.each do |word|
    results[word.length] = word_arr.select {|wrd| wrd.length == word.length}.count
  end

  results
end


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}



