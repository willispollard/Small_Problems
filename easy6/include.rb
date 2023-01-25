# PROBLEM

# Write a method named include? that takes an Array and a search 
# value as arguments. This method should return true if the search 
# value is in the array, false if it is not. You may not use the 
# Array#include? method in your solution.

# Input:
# - Array
# - Search value (object)
# Output:
# - Boolean

# Explicit Reqs:
# - Method takes an array and a search value as an argument
#   - Returns true if value is in the array, false if not
# - Cannot use #include?

# Implicit Reqs:
# - Should be able to take any object as a search value

# EXAMPLES

# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# DATA / ALGORITHM

# Array and any Ruby object

# Define a method called include? that takes an array and a value
# - If the count of the search value is greater than 0 
#   - Return true

# DEF include?(array, search_value)
#   IF array.count(search_value) > 0
#     RETURN true
#   END
# END


# CODE

def include?(array, search_value)
  array.count(search_value) > 0
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false