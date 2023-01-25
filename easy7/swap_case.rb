# PROBLEM

# Write a method that takes a string as an argument and returns a 
# new string in which every uppercase letter is replaced by its 
# lowercase version, and every lowercase letter by its uppercase 
# version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this 
# method.

# Input: string
# Output: new string

# Explicit Rules:
# - Method takes a string as an argument and returns a new string in
#   which every uppecase letter is lowercased and vice versa
# - Any other character should be unchanged
# - Cannot use string#swapcase

# Implicit Rules:
# - Non-alphabetic characters stay the same

# EXAMPLES

# swapcase('CamelCase') == 'cAMELcASE'
# swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# DATA / ALGORITHM

# Initialize constant containing all uppercase letter in an array
# Initialize constant containing all lowercase letter in an array
# Initialize constant zipping uppercase and lowercase and saving
#   the nested arrays into a hash

# Define a method called swapcase that takes a string
# - Set the string to an array using split
#   - Iterate through each word
#     - Iterate through each character
#       - if the character is lowercase
#         - transition it to uppercase casing using the constant
#       - if the charcter is uppercase
#         - transition it to lowercase casing using the constant

# DEF swapcase(string)
#   swapped_words = string.split.map
#     word.chars.map
#       IF LOWERCASE.include?(char)
#         char = CASE_HASH_LOWER[char]
#       IF UPPERCASE.include?(char)
#         char = CASE_HASH_UPPER[char]
#       ELSE
#         char
#       END
#     END

#     word
#   END

#   RETURN swapped_words.join(' ')
# END


# CODE

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

CASE_HASH_LOWER = LOWERCASE.zip(UPPERCASE).to_h
CASE_HASH_UPPER = UPPERCASE.zip(LOWERCASE).to_h

def swapcase(string)
  swapped_words = string.split.map do |word|
    swapped_letters = word.chars.map do |char|
      if LOWERCASE.include?(char)
        char = CASE_HASH_LOWER[char]
      elsif UPPERCASE.include?(char)
        char = CASE_HASH_UPPER[char]
      else
        char
      end
    end

    swapped_letters.join
  end

  swapped_words.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'