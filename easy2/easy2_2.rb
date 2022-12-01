# PEDAC

# PROBLEM

# Build a program that asks a user for the length and width of a room 
# in meters and then displays the area of the room 
# in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time

# Input:
# - Integer

# Output:
# - Float

# Explicit Reqs:
# - Program asks user for both length and width in meters
# - Program gives the area of the room in square meters and sq feet

# Implicit Reqs:
# - sq meters and sq feet should both be floats

# EXAMPLES

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# DATA / ALGORITHM

# Integers and Floats

# - puts a prompt asking for length
#   - Create a length variable set to user input
# - puts a prompt asking for width
#   - Create a width variable set to user input
# - Create a sq meters variable that stores the value in sq meters
# - Create a sq feet variable that stores the value in sq feet
# - puts a string that displays the results 


# puts "Enter the legnth of the room in meters:"
# length = gets.chomp.to_i

# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_i

# sq_meters = length * width
# sq_feet = sq_meters.to_f * 10.7639

# puts "The area of the room is #{sq_meters} square meters (#{sq_feet.truncate(2)} square feet)."

# Next time consider using a CONSTANT to store the conversion for 
# sq meters to sq feet


# Modify this program to ask for the input measurements in feet, 
# and display the results in square feet, square inches, 
# and square centimeters.


FEET_TO_INCHES = 12.0

FEET_TO_CENTIMETERS = 30.48

puts "Enter the legnth of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

sq_feet = length * width
sq_inches = (sq_feet * FEET_TO_INCHES).round(2)
sq_centimeters = (sq_feet * FEET_TO_CENTIMETERS).round(2)

puts "The area of the room is #{sq_feet} square feet (#{sq_inches} " + \
      "square inches or #{sq_centimeters} square centimeters)."



