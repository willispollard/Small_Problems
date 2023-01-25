# PROBLEM

# Write a method that takes an Array of numbers and then returns 
# the sum of the sums of each leading subsequence for that Array. 
# You may assume that the Array always contains at least one number.

# Input: Array of numbers
# Output: Integer (sum)

# Explicit rules:
# - Method takes an array of numbers and returns the sum of the sums
#   of each leading subsequence for that array.
# - Assume the array always contains at least one number.

# Implicit rules:
# - There should be an addition operation happening for each number
#   in the array
#   - In other words, if there are 3 numbers in the array that means
#     there will be 3 instances of addition happening

# EXAMPLES

# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# sum_of_sums([4]) == 4
# sum_of_sums([1, 2, 3, 4, 5]) == 35

# DATA / ALGORITHM

# Define a method sum_of_sums that takes an array of numbers
# - Set a new variable called all_nums equal to []
# - For each number with index in the passed in array
#   - add every number from the array at an index of 0 to the index
#      of the current number, add this to all_nums
#   - return the sum of all_nums

# DEF sum_of_sums(array)
#   SET all_nums = []
#   CALL array.each_with_index
#     all_nums << (array[0]..array[index]) 
#   END

#   RETURN all_nums.sum
# END

# CODE

def sum_of_sums(array)
  all_nums = []

  array.each_with_index do |num, index|
    all_nums << array.slice(0, index + 1)
  end

  all_nums.flatten.sum
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35


