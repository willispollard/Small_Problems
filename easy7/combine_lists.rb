# PROBLEM

# Write a method that combines two Arrays passed in as arguments, 
# and returns a new Array that contains all elements from both 
# Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that 
# they have the same number of elements.

# Input: two arrays
# Output: one array (combination of the two arrays)

# Explicit rules:
# - Method should take an array and return a new array containing
#   all of the elements from the original arrays
#   - The elements in the combined array should be taken in alternation
#     from the originals
# - Assume that the arrays are non-empty and are of the same length

# Implicit rules:
# - Arrays can contain any object

# EXAMPLES

# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# DATA / ALGORITHM

# Define a method called interleave that takes two arrays as args
# - Create a new variable called combined_array and set it equal to
#   an empty array
# - Create a variable called counter and set it equal to 0
#   - Start a loop
#     - Take the object from the first array at the index of the value
#       of counter and push it to the combined_array
#     - Take the object from the second array at the index of counter
#       and push it to the combined_array
#     - Increase the value of counter by 1
#     - break the loop if counter equals the length of the first array
#   - return the combined_array

# DEF interleave(arr1, arr2)
#   SET combined_array = []
#   SET counter = 0

#   LOOP
#     combined_array << arr1[counter]
#     combined_array << arr2[counter]

#     counter = counter + 1
#     BREAK IF counter == arr.size
#   END

#   RETURN combined_array
# END

# CODE

# def interleave(arr1, arr2)
#   combined_array = []
#   counter = 0

#   loop do
#     combined_array << arr1[counter]
#     combined_array << arr2[counter]

#     counter += 1
#     break if counter == arr1.size
#   end

#   combined_array
# end

# further exploration
def interleave(arr1, arr2)
  combined_array = arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']