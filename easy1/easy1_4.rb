# PEDAC

# PROBLEM

# Write a method that counts the number of occurrences of each element 
# in a given array. 
# The words in the array are case-sensitive: 'suv' != 'SUV'. 
# Once counted, print each element alongside the number of occurrences.

# Input:
# - Array

# Output:
# - string

# Explicit Reqs:
# - Write a method
# - Method should count the occurence of each element
# - Words in the array are case sensitive
# - Print each element alongside its number of occurences

# Implicit Reqs:
# - Should record the number of each unique occurence
# - Can the array contain any kind of element or only strings?

# EXAMPLES

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2


# DATA / ALGORITHM

# Array & Hash & String

# - Define method called "count_occurrences"
#   - Method should take one argument which is an array
#   - Create an empty Hash called occurences
#   - Call a block that iterates through the #uniq elements of the array
#   and records the number of each to the occurences Hash
#   - Call another block that iterates through each occurence and prints
#   a string "{element} => {times}"


def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)






