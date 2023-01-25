=begin
PROBLEM

input: array
output: array(s)

explicit rules:
- Given an array, write a program that outputs groups of words that
  anagrams
- anagrams are words that have the exact same letters in them but
  in a different order

implicit rules:
- assume we only work with alphabetic characters

EXAMPLES

["demo", "dome", "mode"]
["neon", "none"]

DATA / ALGORITHM

define a method called anagrams that takes an array
- Iterate through the array and select words that have the same
  letters in them
  - Initialize a variable called all_anagrams and set it to an 
    empty array
  - initialize a variable called current_index and set it to 0
  - Loop through the array 
    - define a variable called anagrams and set it to an empty arr
    - define a variable called current_word and set it equal to
      array at the index of current_index
    - Call the each method on the array
      - If the characters in the starting word are the same as the 
        characters in each iteration, then append current word to 
        anagrams
        - (to do this, call chars method on word and compare them to
          chars of current word)
    - Push anagrams to all_anagrams if the size of anagrams is greater
      than one
    - Iterate current_index by 1
    - Break the loop when the current_index == array.size - 1
  - Return the unique arrays from all_anagrams

CODE
=end

def anagrams(array)
  all_anagrams = []
  current_index = 0

  loop do
    anagrams = []
    current_word = array[current_index]

    array.each do |word|
      if word.chars.sort == current_word.chars.sort
        anagrams << word
      end
    end

    all_anagrams.append(anagrams) unless anagrams.size < 2
    current_index += 1
    break if current_index == array.size - 1
  end

  p all_anagrams.uniq.flatten
end

anagrams(["demo", "dome", "mode"])
anagrams(["neon", "none"])



