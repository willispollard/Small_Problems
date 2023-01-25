=begin
PROBLEM

Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the 
substring begins. This means that all substrings that start at 
position 0 should come first, then all substrings that start at 
position 1, and so on. Since multiple substrings will occur at 
each position, the substrings at a given position should be 
returned in order from shortest to longest.

Input: String
Output: Array of all substrings

Explicit rules:
- Write a method that returns a list of all susbtrings of a string.
  - The returned list should be ordered where where in the string
    the substring begins. (all substrings at index 0 come first,
    and so on.)
  - For substrings starting at the same index, the shortest ones
    should come first.

Implicit rules:


EXAMPLES

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

DATA / ALGORITHM

Need to divide all the substrings and put them into an array

Define a method called substrings that takes a string as an argument
- Initialize a variable called all_substrings and set it to an empty
  array
- Initialize a variable called counter and set it equal to zero
- Initialize a variable called starting_index and set it equal to
  zero
  - Start a Loop
    - Get the value of string at the in

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

p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


# Spend more time on PEDAC before jumping in!













