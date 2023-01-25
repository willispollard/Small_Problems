# PEDAC

# PROBLEM

# Write a method that takes an Array as an argument, and returns 
# two Arrays (as a pair of nested Arrays) that contain the first 
# half and second half of the original Array, respectively. If 
# the original array contains an odd number of elements, the middle 
# element should be placed in the first half Array.

# Input:
# - Array
# Output:
# - Two Arrays (pair of nested arrays)

# Explicit Reqs:
# - Method should take an array as an argument
#   - Return two arrays containing the first half and second half
#     of the input array, nested in one array
#   - If the original array contains an odd number of elements
#     the middle element should be placed in the first half array

# Implicit Reqs:
# - An empty array should return two empty arrays

# EXAMPLES

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# DATA / ALGORITHM

# Arrays

# Define a method call halvsies that takes an array as an argument
# - Set a variable first_half = []
# - Set a variable second_half = []
# - Set variable length = half the length of the input array
# - Call each_with_index method on input array
#   - If index <= length
#     - first_half << element
#   - Else
#     - second_half << element
#   - end
# - Return an array containing first_half and second_half

# DEF halvsies(array)
#   SET first_half = []
#   SET second_half = []

#   CALL array.each_with_index do |element, index|
#     IF index <= (array.length / 2)
#       first_half << element
#     ELSE
#       second_half << element
#     END

#   RETURN [first_half, second_half]
# END

# CODE

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)

  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
