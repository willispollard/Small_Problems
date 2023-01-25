=begin
PROBLEM

input: Integer
output: Integer

explicit rules: 
- Write a method that takes an integer as an arg and returns the number
  doubled unless it is a double number
  - a double number is a number with an even number of digits whose
    left-side digits are the same as the right-side
  - if the number is a double number, return it as-is
implicit rules:

EXAMPLES

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

DATA / ALGORITHM

define a method called twice that takes an integer as an argument
- To determine if the number is a double number: call the digits
  method on the integer to get an array of its digits
  - To determine the middle index of the array: get half the size of
    the array
  - If the digits from the starting index to middle_index equal 
    the digits from the middle_index to the end, then it is a
    double_number
- Set variable middle_index = half size of array
- If the number is a double number
  - Return the number
- Else return the number * 2

CODE
=end

def twice(int)
  digits = int.digits
  middle_index = (digits.size/2)

  if digits.slice(0, middle_index) == digits[middle_index..-1]
    int
  else
    int * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) #== 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10