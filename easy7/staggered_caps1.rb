# PROBLEM

# Write a method that takes a String as an argument, and returns 
# a new String that contains the original value using a staggered 
# capitalization scheme in which every other character is 
# capitalized, and the remaining characters are lowercase. 
# Characters that are not letters should not be changed, but count 
# as characters when switching between upper and lowercase.

# Input: String
# Output: String

# Explicit rules:
# - Method takes a string and returns a new string with each character
#   alternatively capitalized
#   - Characters that are not letters should not be changed, but they
#     should count as characters when alternating between upper and
#     lowercase
# Implicit rules:

# EXAMPLES

# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# DATA / ALGORITHM

# Define a method called staggered_case
# - Convert the string to an array of characters
#   - Iterate through the array and call the upcase method
#     on the character if its index is 0 or even
# - Join the characters back together into a string

# CODE

# def staggered_case(string)
#   alt_characters = []
#   string.chars.each_with_index do |char, index|
#     if (index == 0) || index.even?
#       alt_characters << char.upcase
#     else
#       alt_characters << char.downcase
#     end
#   end

#   alt_characters.join
# end

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# further exploration:
def staggered_case(string, first = true)
  result = ''
  if first
    need_upper = true
  else
    need_upper = false
  end
  
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!', true) 
p staggered_case('ALL_CAPS', false)
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
