# PEDAC

# PROBLEM

# Write a method that returns an Array that contains every other 
# element of an Array that is passed in as an argument. 
# The values in the returned list should be those values that are 
# in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Input:
# - Array

# Output:
# - Array

# Explicit Reqs:
# - Method returns an array of every other element of argument
# - Argument should be an array
# - Elements 1, 3, 5... and so on

# Implicit Reqs:
# - Arrays can contain any kind of data
# - An empty argument should produce an empty array

# EXAMPLES

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []
# oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

# DATA / ALGORITHM

# Arrays

# - Define method oddities that takes an array as an arg
#   - set variable new_array to an empty array
#   - set counter to 0
#   - Until counter equals the size of the argument
#     - Select values from argument unless counter is odd
#       - Store values in new_array
#     - counter += 1
#   - Return array
# - end


# CODE

def oddities(array)
  new_array = []
  counter = 0

  while counter < array.size
    new_array << array[counter] unless counter.odd?

    counter += 1
  end

  new_array
end

puts oddities([2, 3, 4, 5, 6]) 
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
puts oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

      