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

def negative?(digit_string)
  if digit_string.chars[0] == '-'
    true
  end
end

def string_to_signed_integer(digit_string)
  integer_array = []
  digit_array = digit_string.chars

  if digit_array[0] == '+' || digit_array[0] == '-'
    digit_array.delete_at(0)
  end

  digit_array.each do |char|
    integer_array << DIGITS[char]
  end

  value = 0
  integer_array.each { |num| value = 10 * value + num }

  if negative?(digit_string) 
    value = value * -1
  end

  value
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100


