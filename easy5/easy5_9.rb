# PEDAC 

# PROBLEM

# Write a method that takes a string argument and returns a 
# new string that contains the value of the original string 
# with all consecutive duplicate characters collapsed into a single 
# character. You may not use String#squeeze or String#squeeze!.

# Input:
# - String

# Output:
# - String

# Explicit Reqs:
# - Method takes a string as an argument
#   - Method returns any consecutive duplicate characters collapsed
#     into a single character
# - Cannot use #squeeze or #squeeze!

# Implicit Reqs:
# - Even if the word is intended to have duplicate characters,
#   it appears that they should be removed

# EXAMPLES

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# DATA / ALGORITHM

# Strings

# - Define method crunch that takes a string as an argument
#   - Call char on the string to put each character in an array
#   - for each char in the array
#     - if the char at the current index equals the character at
#       index + 1
#       - delete char from the array
#   - Return the array 

# CODE

def crunch(string)
  crunched_text = ''
  index = 0

  while index <= string.length - 1
    crunched_text << string[index] unless string[index] == string[index +1]

    index += 1
  end

  crunched_text
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''


