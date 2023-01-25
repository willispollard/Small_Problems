# PEDAC

# PROBLEM

# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations 
# on those two numbers: addition, subtraction, product, quotient, 
# remainder, and power. Do not worry about validating the input.

# Input:
# - Integers

# Output:
# - Strings

# Explicit Reqs:
# - Program prompts user for two positive integers
# - Program displays the results of each operation on integers
# - Operations are: addition, subtraction, multiplication, division,
#   remainder, and square
# - Input validation unneeded

# Implicit Reqs:
# - Prompts should begin with '==>'
# - Inputs should be converted to integers
# - Outputs should be string containing integers

# EXAMPLES

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# DATA / ALGORITHM

# Integers & Strings

# - Prompt user for integer
#   - Set variable first_num to user input
# - Prompt user for another integer
#   - Set variable second_num to user input
# - Puts Strings displaying the result of each operation


puts "==> Enter the first number:"
first_num = gets.chomp.to_i

puts "==> Enter the second number:"
second_num = gets.chomp.to_i

puts "==> #{first_num} + #{second_num} = #{first_num + second_num}"
puts "==> #{first_num} - #{second_num} = #{first_num - second_num}"
puts "==> #{first_num} * #{second_num} = #{first_num * second_num}"
puts "==> #{first_num} / #{second_num} = #{first_num / second_num}"
puts "==> #{first_num} % #{second_num} = #{first_num % second_num}"
puts "==> #{first_num} ** #{second_num} = #{first_num ** second_num}"


