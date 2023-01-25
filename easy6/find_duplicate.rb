# PROBLEM

# Given an unordered array and the information that exactly one 
# value in the array occurs twice (every other value occurs exactly 
# once), how would you determine which value occurs twice? Write 
# a method that will find and return the duplicate value that is 
# known to be in the array.

# Input:
# - Array
# Output:
# - Integer

# Explicit Reqs:
# - Write a method that will find and return the duplicate value
#   in the array
#   - Assume that you know there is only one duplicate value

# Implicit Reqs:
# - Examples all only use integers. I will assume the output should be
#   an integer

# EXAMPLES

# find_dup([1, 5, 3, 1]) == 1
# find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# DATA / ALGORITHM

# Array and Integers

# Define a method called find_dup that takes an array as an argument
# - for each element in the array
#   - if the count of the element is greater than 1
#     - return this element
#   - else skip
# - end

# DEF find_dup(array)
#   FOR array.each
#     IF array.count(element) > 1
#       RETURN element
#     ELSE
#       NEXT
#     END
#   END
# END

# CODE

def find_dup(array) 
  duplicates = array.select do |element|
    element if array.count(element) > 1
  end

  duplicates.first
end

p find_dup([1, 5, 3, 1]) #== 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
