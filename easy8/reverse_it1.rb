=begin
PROBLEM

Input: String
Output: New string

Explicit rules:
- Write a method that takes a string and returns a new string
  with the words in reverse order
Implcit rules:

EXAMPLES

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

DATA / ALGORITHM

Define a method called reverse_sentence that takes a string
- Call the split method to convert the string to an array of words
- On the array call the reverse method to reverse their order
- Rejoin the elements to a string with a space between each word
- Return the string

CODE
=end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''