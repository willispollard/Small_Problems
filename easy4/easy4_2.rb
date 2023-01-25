# PEDAC

# PROBLEM

# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the 
# century number, and ends with st, nd, rd, or th as appropriate 
# for that number.

# New centuries begin in years that end with 01. So, the years 
# 1901-2000 comprise the 20th century.

# Input:
# - Integer

# Output:
# - String

# Explicit Reqs:
# - Method takes a year as an input and returns the century
# - Return value should be a string that starts with the century number
#   and ends with st, nd, rd, or th
# - New centuries begin in years that end with 01

# Implicit Reqs:

# EXAMPLES

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# DATA / ALGORITHM

# Integers & Strings

# - Characters up intil two before last ([-2]) determine which century
#   - If last two characters equals 01, then it is century plus 1

# - Define method century that takes a year as an argument (integer)
#   - call the #digits method on the year to get an array
#   - if the size of year is 1, shift a 0 to the beginning
#   - Chars[0] to chars[-2] + 1 equals century 
#       - unless chars[-2] to chars[-1] equal 01
#         - In this case century + 1

# CODE

def century(year)
  year = year.digits.reverse

  if year.size == 1 
    year.unshift(0)
  end

  century = year[0..-3].join.to_i + 1

  if year[-2..-1] == [0, 0]
    century -= 1
  end

  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'


