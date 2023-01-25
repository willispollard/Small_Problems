=begin
PROBLEM

input: two integers
output: Array

explicit rules:
- method takes two integers as args, the first arg is a count and the
  second is the first number of a sequence
  - Return an array containing the same number of elements as the
    count where the values are multiples of the starting number
- Assume count will always be greater than zero
- Starting integer can be any value
- If the count is zero an empty list should be returned

implicit rules:

EXAMPLES

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

DATA / ALGORITHM

define a method called sequence with parameters count and 
starting_num
- Initialize a new variable called sequence_arr 
  and point it to an empty array
- current_num = 0
- count.times do
  - current_num = current_num + starting_num
  - sequence_arr << current_num
- return sequence_arr

CODE
=end

def sequence(count, starting_num)
  sequence_arr = []
  current_num = 0

  count.times do
    current_num += starting_num
    sequence_arr << current_num
  end

  sequence_arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []