# PEDAC

# PROBLEM

# Build a program that displays when the user will retire 
# and how many years she has to work till retirement.

# Input:
# - Integer

# Output:
# - String

# Explicit Reqs:
# - Program displays when user will retire
# - Also displays how many years she has to work until then

# Implicit Reqs:
# - Years should be displayed as integers
# - Output should be a string

# EXAMPLES

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# DATA / ALGORITHM

# Integers & Strings

# - Prompt user to enter their age
#   - Set variable age to user input
# - Prompt user to enter the age they would like to retire
#   - Set variable retirement_age to user input
# - Set a variable t equal to time class
# - Set a variable work_years to retirement_age minus age
# - Set variable retirement_year to t.year plus work_years
# - puts a string the gives the t.year and retirement_year
# - puts a string that displays work_years


puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

t = Time.now
work_years = retirement_age - age
retirement_year = t.year + work_years

puts "It's #{t.year}. You will retire in #{retirement_year}."
puts "You have only #{work_years} years of work to go!"




