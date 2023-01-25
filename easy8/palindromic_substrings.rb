=begin
PROBLEM

Input: String
Output: array of palindromic substrings

Explicit rules:
- Methos should take a string and return a list of all substrings
  within the string that are palindromic
  - The characters going forward are the same as they are going
    backward
  - Duplicates should NOT be removed
  - Palindromes are case sensitive
  - assume single characters are not palindromes
- You may use the previously defined substrings method

Implicit rules:
- If no palindromes then retrun an empty array

EXAMPLES

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

DATA / ALGORITHM

Define a method called palindromes that takes a string as an arg
- Set variable all_substrings to the return of invoking substrings
- Set variable palindromic_substrings to an empty array
- Iterate through each substring in all_substrings
  - if the substring is the same forward and backward then push it
    to palindromic_substrings
    - if substring.chars == substring.chars.reverse
- Return palindromic_substrings


CODE
=end

def leading_substrings(string)
  substrings = []
  characters = string.chars

  1.upto(characters.size) do |count|
    substrings << characters.slice(0, count)
  end
  # characters.each_index do |index|
  #   substrings << characters.slice(0, index + 1)
  # end

  substrings.map { |arr| arr.join }.flatten
end

def substrings(string)
  all_substrings = []
  starting_index = 0
  length = string.length

  loop do
    all_substrings << leading_substrings(string.slice(starting_index, length))

    starting_index += 1
    length -= 1
    break if starting_index == string.length
  end

  all_substrings.flatten
end

def palindromes(string)
  all_substrings = substrings(string)
  palindromic_substrings = []

  all_substrings.each do |substring|
    if substring.chars == substring.chars.reverse
      palindromic_substrings << substring unless substring.length < 2
    end
  end

  palindromic_substrings
end

p palindromes('abcd') #== []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]




