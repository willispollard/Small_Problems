=begin
PROBLEM

Input: String
Output: New string

Explicit rules:
- Write a method that takes a streing and returns a new string in
  which every consonant is doubled
  - Vowels, digits, punctuation, and whitespace should not be doubled

Implicit rules:
- Non consonants should still be included, just not doubled

EXAMPLES

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

DATA / ALGORITHM

Define a constant called CONSONANTS and set it equal to every letter
in the alphabet that isn't a vowel.

Define a method called double_consonants that takes a string as an arg
- Initialize a variable called new_string equal to an empty string
- Convert the characters in the passed in string to an array
- For each character in the array:
  - If the character is contained in the CONSONANTS array the append
    it to new_string twice
  - If it is not in the in CONSONANTS array then append it only once
- Return new_string

CODE
=end

CONSONANTS = ('a'..'z').to_a - ['a', 'e', 'i', 'o', 'u']

def double_consonants(string)
  new_string = ''

  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      new_string << (char*2)
    else
      new_string << char
    end
  end

  new_string
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""