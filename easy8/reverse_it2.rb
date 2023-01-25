=begin
PROBLEM

input: String
output: new string

explicit rules:
- Method takes a string of one or more words
  - Returns a string with words containing five or more characters
    reversed
- Each string will consist of only spaces and letters

implicit rules:

EXAMPLES

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

DATA / ALGORITHM

Define a method called reverse_words that takes a string an arg
- Initialize a variable called new_string and set it equal to an
  empty array
- Convert the string to an array of words
- For each word in the string:
  - If the word has 5 or more characters
    - Append the word reversed to new_string
  - Otherwise append the word to new_string as-is
- Join the words together in new string with a space to convert and
  return the result

CODE
=end

def reverse_words(string)
  new_string = []

  string.split.each do |word|
    if word.length >= 5
      new_string << word.reverse
    else
      new_string << word
    end
  end

  new_string.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS