# PEDAC

# PROBLEM

# Write a method that takes an Array as an argument, and reverses 
# its elements in place; that is, mutate the Array passed into 
# this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Input:
# - Array
# Output:
# - Array

# Explicit Reqs:
# - Method takes an array as an argument and returns the same array
#   - The returned array should be reversed. That is the array should
#     be the same, but mutated.
# - Cannot use the #reverse or #reverse! methods

# Implicit Reqs:
# - The elements themselves should not be reversed, just the order
#   of the elements in the array.

# EXAMPLES

# # list = [1,2,3,4]
# # result = reverse!(list)
# # result == [4, 3, 2, 1] # true
# # list == [4, 3, 2, 1] # true
# # list.object_id == result.object_id # true

# # list = %w(a b e d c)
# # reverse!(list) == ["c", "d", "e", "b", "a"] # true
# # list == ["c", "d", "e", "b", "a"] # true

# # list = ['abc']
# # reverse!(list) == ["abc"] # true
# # list == ["abc"] # true

# # list = []
# # reverse!(list) == [] # true
# # list == [] # true

# DATA / ALGORITHM

# Arrays

# Define a method called reverse! that takes an array as an arg
# - iterate through the passed in array
#   - set variable index = 0
#   - call the insert method using the index variable as the index
#     and the return value of calling the pop method on the array
#     as the object.

# DEF reverse!(array)
#   SET variable index = 0
#   LOOP
#     array.insert(index, array.pop)
#     index += 1
#     BREAK if index == array.length
#   END

#   RETURN array
# END

# CODE

def reverse!(array)
  index = 0

  loop do
    if array.empty?
      break
    else
      array.insert(index, array.pop)
      index += 1
      break if index == array.length
    end
  end

  array
end

puts list = [1,2,3,4]
puts result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

puts list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

puts list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

puts list = []
puts reverse!(list) == [] # true
p list # true