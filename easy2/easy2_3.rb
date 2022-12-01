# PEDAC

# PROBLEM

# Create a simple tip calculator. The program should prompt for a 
# bill amount and a tip rate. The program must compute the tip 
# and then display both the tip and the total amount of the bill.

# Input:
# - Integers

# Output:
# - Floats
# - String

# Explicit Reqs:
# - Program should prompt for a bill amount and tip rate
# - Compute the tip
# - Display tip and total amount of bill

# Implicit Reqs:
# - Outputs should be a string containing floats

# EXAMPLES

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# DATA / ALGORITHM

# Integers, Floats, Strings

# - Prompt the user for the bill
#   - Set variable bill to user input
# - Prompt the user for the tip rate
#   - Set variable tip rate to user input divided by 100
# - Set variable tip to tip_rate times the bill
# - Set variable bill_total to tip plus bill
# - puts both using strings

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_rate = gets.chomp.to_f / 100

tip = (tip_rate * bill).round(2)
bill_total = (bill + tip).round(2)

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", bill_total)}"



