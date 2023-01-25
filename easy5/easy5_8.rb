# PEDAC

# PROBLEM

# Write a method that takes an Array of Integers between 0 and 19, 
# and returns an Array of those Integers sorted based on the 
# English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, 
# ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, 
# seventeen, eighteen, nineteen

# Input:
# - Array of integers

# Output:
# - Array of integers

# Explicit Reqs:
# - Method takes an array of integers between 0 and 19 and
#   - Method returns an array of those integers sorted based on the
#     english word for each integer

# Implicit Reqs:
# - 0 and 19 are both included in the range of numbers

# EXAMPLES

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# DATA / ALGORITHM

# Arrays and Integers

# - Initialize a constant ALPHABETIC_NUMBERS that contains the 
#   string-word version of each integer
# - Define method alphabetic_number_sort that takes an array of integers
#   0-19
#   - Initialize empty array
#   - The index of each obj in ALPHABETIC_NUMBERS equals the current 
#     number in the array,
#       - add 

# CODE

ALPHABETIC_NUMBERS = %w(zero one two three four five six seven eight nine
ten eleven twelve thirteen fourteen fifteen sixteen seventeen
eighteen nineteen)

def alphabetic_number_sort(arr)
  arr.sort_by { |num| ALPHABETIC_NUMBERS[num] }
end


arr = (0..19).to_a

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]


