=begin
PROBLEM

input: string
output: array of every word in the string

explicit rules:
- method takes a string and returns an array containg each word
  combined with th enumber of characters in that word combined into
  one string

implicit rules:

EXAMPLES

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

DATA / ALGORITHM

define a method called word_lengths
- initialize word_arr variable and set it equal to an array
  containing every word in the string
  - For each word in the array, map it to the word plus the length
    of the word
- return the word_arr

CODE
=end

def word_lengths(string)
  word_arr = string.split

  word_arr.map { |word| word << " #{word.length}"}
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []