=begin
PROBLEM

input: Array containing integers
output: average of all numbers in array

explicit rules:
- Write a method that takes an array of integers and returns the
  average of all numbers in the array
- The array will never be empty
- Integers will always be positive
- Result should be an integer
- Dont use sum method

implicit rules:

EXAMPLES

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

DATA / ALGORITHM

Define a method called average that takes an array of integers
- Initialize a variable called total and set it equal to 0
- For each number in the array, add it to total
- return total div by the length of the array

CODE
=end

# def average(array)
#   total = 0
#   array.each {|num| total += num}

#   total / array.length
# end

# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) #== 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# further exploration

def average(array)
  total = 0
  array.each {|num| total += num}

  total.to_f / array.length
end

puts average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) #== 25
puts average([9, 47, 23, 95, 16, 52]) #== 40