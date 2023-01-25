# PEDAC

# PROBLEM

# Write a method that takes an Array, and returns a new Array with 
# the elements of the original list in reverse order. Do not modify 
# the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use 
# the method you wrote in the previous exercise.

# Input:
# - Array
# Output:
# - New array

# Explicit Reqs:
# - Method takes an array and returns a new array with the elements
#   of the original in reverse order
#   - Original array should not be mutated.
# - Cannot use #reverse or #reverse! methods
# - Cannot use the method made in the previous exercise

# Implicit Reqs:

# EXAMPLES

# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

# DATA / ALGORITHM

# Arrays

# Define a method called reverse that takes an array
# - Set a variable called reversed_array to an empty array
# - Call the each method on the original array
#   - For each element in the array, prepend it to the empty array
# - Return the reversed array

# DEF reverse(array)
#   SET reversed_array = []
#   CALL array.each 
#     reversed_array.prepend(element)
#   END

#   RETURN reversed_array
# END

# CODE

# def reverse(array)
#   reversed_array = []

#   array.each do |element|
#     reversed_array.prepend(element)
#   end

#   reversed_array
# end

# further exploration using #inject
def reverse(array)
  array.inject([], :prepend)
end

p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

puts list = [1, 3, 2]                      # => [1, 3, 2]
puts new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
p new_list #== [2, 3, 1]                 # => true