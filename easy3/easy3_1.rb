# PEDAC

# PROBLEM

# Write a program that solicits 6 numbers from the user, 
# then prints a message that describes whether or not 
# the 6th number appears amongst the first 5 numbers.

# Input:
# - Integers

# Output:
# - String

# Explicit Reqs:
# - Program asks for 6 numbers
# - Program displays a message telling user if the 6th number appears
#   among the first 5 numbers

# Implicit Reqs:
# - Prompts should begin with '==>'
# - Numbers should all be integers
# - Numbers should be stored in an array


# EXAMPLES

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].



# DATA / ALGORITHM

# Integers and Strings

# - Set variable numbers to empty array
# - Prompt user for 1st number
#   - Add num to numbers
# - Prompt user for 2nd number 
#   - Add num to numbers
# - Prompt user for 3rd number
#   - Add num to numbers
# - Prompt user for 4th number
#   - Add num to numbers
# - Prompt user for 5th number
#   - Add num to numbers
# - Prompt user for 6th number
#   - Set variable sixth_num to user input

# - If sixth_num in numbers
#   - puts String confirming this
# - If sixth_num not in numbers
#   - puts String confirming this


numbers = []

puts "==> Enter the 1st number:"
numbers << gets.chomp.to_i 

puts "==> Enter the 2nd number:"
numbers << gets.chomp.to_i 

puts "==> Enter the 3rd number:"
numbers << gets.chomp.to_i 

puts "==> Enter the 4th number:"
numbers << gets.chomp.to_i 

puts "==> Enter the 5th number:"
numbers << gets.chomp.to_i

puts "==> Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end

