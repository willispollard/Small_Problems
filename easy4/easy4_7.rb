# PEDAC

# PROBLEM

# Write a method that takes a String of digits, and returns the 
# appropriate number as an integer. You may not use any of the 
# methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you 
# worry about invalid characters; assume all characters will 
# be numeric.

# You may not use any of the standard conversion methods 
# available in Ruby to convert a string to a number, such as 
# String#to_i, Integer(), etc. Your method should do this the 
# old-fashioned way and calculate the result by analyzing the 
# characters in the string.

# Input:
# - String of digits

# Output:
# - Integer

# Explicit Reqs:
# - Method should take a string and return it as an integer
# - Method cannot use #String.to_i or Integer()
# - Do not worry about leading + or - signs or invalid characters
#   - Assume all characters are numeric
# - Do not use any standard conversion methods
# - Method should caclulate the result by analyzing the characters 
#   in the string

# Implicit Reqs:

# EXAMPLES

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# DATA / ALGORITHM

# String and Integers

# - Initialize a constant DIGITS and set it to a hash containing every
#   digit 0-9 as a string and key and the corresponding integer as each
#   value
# - Define method string_to_integer that takes a string of digits
#   as an argument
#   - Initialize empty array
#   - for each char in the string
#     - char == DIGITS[char]
#     - add char to array
#   - Join array
#   - return array

# CODE

DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

HEXADECIMAL_DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15
}

# def string_to_integer(digit_string)
#   integer_array = []

#   digit_string.chars.each do |char|
#     integer_array << DIGITS[char]
#   end

#   value = 0
#   integer_array.each { |digit| value = 10 * value + digit }
#   value
# end

# puts string_to_integer('4321') == 4321
# puts string_to_integer('570') == 570
# puts DIGITS['1']

def hexadecimal_to_integer(hexa_string)
  digits = hexa_string.chars.map { |char| HEXADECIMAL_DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

hexadecimal_to_integer('4D9f') == 19871
