# PEDAC

# PROBLEM

# Write a program that will ask a user for an input of a word 
# or multiple words and give back the number of characters. 
# Spaces should not be counted as a character.

# Input:
# - String

# Output:
# - String

# Explicit Reqs:
# - Program prompts user for a word or multiple words
# - Program calculates the number of characters
# - Spaces are not counted as characters

# Implicit Reqs:
# - Punctuation and apostrophes are counted as characters


# EXAMPLES

# Please write word or multiple words: walk
# There are 4 characters in "walk".

# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

# DATA / ALGORITHM

# Strings & Integers

# - Prompt user to enter a word or multiple words
#   - Set variable string to user input
# - Call #split method on string to put elements into an array
#   - Assign the result to variable word_array
# - Call #each on word_array and count the number of chars in each element
#   - Set variable total_characters to result
# - Puts String that displays the total_characters of string


puts "Please write a word or multiple words:"
string = gets.chomp.to_s

word_array = string.split

total_characters = 0
word_array.each do |word|
  total_characters += word.length
end

puts "There are #{total_characters} characters in \"#{string}\"."





