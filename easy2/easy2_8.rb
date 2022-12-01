# PEDAC

# PROBLEM

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product 
# of all numbers between 1 and the entered integer.

# Input:
# - Integer
# - String

# Output:
# - String

# Explicit Reqs:
# - Program asks user to enter an integer greater than 0
# - Program asks user to input sum or product
# - Program calculates sum or product of all numbers between 1
#   and integer determined by user input

# Implicit Reqs:
# - Output should be a string that displays the calculation
# - Prompts should be prefaced with '>>'
# - No floats

# EXAMPLES

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.


# DATA / ALGORITHM

# Integers and Strings

# - Prompt user for an integer greater than 0
#   - Set variable num to user input
# - Prompt user to choose to compute the sum or the product
#   - Set variable function to user input
# - If function == 's' then we will calculate sum
# - If function == 'p' then we will calculate product
# - Set variable num_range to a range of 1 to num
# - Invoke #each_with_index method to iterate through num_range
#   - for each element calculate function of element with 
#     element[index + 1]
#   - Set variable total to the value above
# - puts String that displays the total of the calculation


# total_sum = 0
# total_product = 1

# loop do
# puts ">> Please enter an integer greater than 0:"
# num = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# function = gets.chomp

#   if function == 's'
#     (1..num).each_with_index do |value, index|
#       total_sum += value
#     end
#     puts "The sum of the integers between 1 and #{num} " + \
#     "is #{total_sum}."
#     break

#   elsif function == 'p'
#     (1..num).each_with_index do |value, index|
#       total_product *= value
#     end

#     puts "The product of the integers between 1 and #{num} " + \
#     "is #{total_product}."
#     break

#   else
#     puts "Sorry, unknown operation."
#   end
# end




puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
function = gets.chomp

if function == 's'
  puts "The sum of the integers between 1 and #{num} " + \
    "is #{(1..num).inject(:+)}."
elsif function == 'p'
  puts "The product of the integers between 1 and #{num} " + \
    "is #{(1..num).inject(:*)}."
else
    puts "Sorry, unknown operation."
end




