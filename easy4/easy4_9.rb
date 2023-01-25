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
  arr = integer.digits.reverse
  string_array = []

  arr.each do |num|
    string_array << DIGITS[num]
  end
  
  string_array.join('')
end

puts integer_to_string(4321)
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
