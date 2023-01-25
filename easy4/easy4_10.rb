DIGITS = { 
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(integer)
  if integer.negative?
    arr = (integer * -1).digits.reverse
  else
    arr = integer.digits.reverse
  end

  string_array = []
  arr.each do |num|
    string_array << DIGITS[num]
  end
  
  string_array.join('')
end

def signed_integer_to_string(integer)
  if integer.positive?
    integer_to_string(integer).prepend('+')
  elsif integer.negative?
    integer_to_string(integer).prepend('-')
  else
    integer_to_string(integer)
  end
end

puts signed_integer_to_string(4321)
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'