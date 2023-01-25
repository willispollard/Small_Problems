=begin
PROBLEM

Input: String
Output: New string

Implicit Rules:
- Write a method that takes a string and returns a new string
  with every character doubled

Explicit rules:
- Empty string should return an empty string

EXAMPLES

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

DATA / ALGORITHM

Define a method called repeater that takes a string
- Initialize a variable called doubled_string pointed to an an
  empty string
- Convert the passed in string to an array of characters
- For each character in the array append the character to
  doubled_string twice
- Return doubled_string

CODE
=end

def repeater(string)
  doubled_string = ''

  string.chars.each do |char|
    doubled_string << (char * 2)
  end

  doubled_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''