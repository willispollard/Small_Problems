# PEDAC

# PROBLEM

# In the modern era under the Gregorian Calendar, leap years occur 
# in every year that is evenly divisible by 4, unless the year 
# is also divisible by 100. If the year is evenly divisible by 100, 
# then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. 
# Write a method that takes any year greater than 0 as input, and 
# returns true if the year is a leap year, or false if it is not a 
# leap year.

# Input:
# - Integer

# Output:
# - Boolean

# Explicit Reqs:
# - Leap years occur in every year that is evenly divisible by 4
#   - Unless the year is also divisible by 100
# - If the year is evenly divisible by 100 it is not a leap year
#   - Unless the year is also evenly divisible by 400
# - Method takes any year greater than 0 and returns true if the year
#   is a leap year
#   - Returns false if they year is not a leap year

# Implicit Reqs:

# EXAMPLES

# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# DATA / ALGORITHM

# Integers & Booleans

# - Define method leap_year? that takes an integer (year) as an arg
#   - If the year is divisible by 4 
#     - Return true unless also divisible by 100
#     - If year is divisible by 100
#       - Return false unless also divisible by 400


# CODE

# def leap_year?(year)
#   if year % 4 == 0 && year % 100 != 0
#     return true
#   elsif year % 100 == 0 && year % 400 == 0
#     return true
#   else 
#     return false
#   end
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == false
# puts leap_year?(1) == false
# puts leap_year?(100) == false
# puts leap_year?(400) == true


def leap_year?(year)
  if year >= 1752
    if year % 4 == 0 && year % 100 != 0
      return true
    elsif year % 100 == 0 && year % 400 == 0
      return true
    else 
      return false
    end
  elsif year < 1752
    if year % 4 == 0
      return true
    else
      return false
    end
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1752) == true
puts leap_year?(1) == false
puts leap_year?(100) == true





