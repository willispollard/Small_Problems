# PEDAC

# PROBLEM

# Write a method that takes an Array of numbers, and returns an 
# Array with the same number of elements, and each element has 
# the running total from the original Array.

# Input:
# - Array of integers
# Output:
# - Array of integers

# Explicit Reqs:
# - Method takes an array of numbers and returns ana array of the
#   same length
# - Each element in the return array has the running total from the
#   original array

# Implicit Reqs:
# - Use integers

# EXAMPLES

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# DATA / ALGORITHM

# Arrays and Integers

# - Define method running_total that takes an array as an argument
#   - initialize variable running_nums and set to an empty array
#   - initialize variable index and set to 0
#   - start new loop
#     - push number[index] added to the number[0..index] to running_nums
#     - index += 1
#     - break loop when index equals the size of input array
#     - end

# CODE

# def running_total(array)
#   running_nums = []
#   iterator = 0 

#   loop do
#     break if iterator == array.size
#     num = array[0..iterator].to_a.sum

#     running_nums << num
#     iterator += 1
#   end

#   running_nums
# end

# def running_total(array)
#   sum = 0
#   array.map { |num| sum += num }
# end

def running_total(numbers)
  sum = 0
  numbers.each_with_object([]) do |num, array|
    array << (sum += num)
  end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []


