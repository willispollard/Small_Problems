# PROBLEM

# Write a method that calculates and returns the index of the 
# first Fibonacci number that has the number of digits specified 
# as an argument. (The first Fibonacci number has index 1.)

# Input:
# - Integer
# Output:
# - Integer

# Explicit Reqs:
# - Method takes a number that signifies the number of digits
#   - Returns at what number in the sequence the first number with
#     that many digits occurs
# - The first fibonacci number has index 1

# Implicit Reqs:

# EXAMPLES

# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# PSEUDO-CODE

# Define method to find the index by length
#   set variable fibonnaci equal to array of [1, 1]
#   call a loop
#     set current_number = 2
#     fibonacci << (fibonacci[current_num - 1] + fibonacci[current_num - 2])
#       current_number += 1
#       break when fibonacci reaches the first number of the given digits
#       return the current_number - 1

# DEF find_fibonacci_index_by_length(digit_length)
#   SET fibonacci = [1, 1]
#   START loop
#     SET current_index = 2
#     current_num = (fibonacci[current_num - 1] + fibonacci[current_num - 2])
#     fibonacci << current_num
#     current_index = current_index + 1
#     IF current_num.digits.length == digit_length
#       RETURN fibonacci.length
#       BREAK
#     END
#   END
# END

require 'pry'

def find_fibonacci_index_by_length(digit_length)
  fibonacci = [1, 1]
  current_num = 0
  current_index = 2

  loop do
    current_num = (fibonacci[current_index - 1] + fibonacci[current_index - 2])
    fibonacci << current_num
    current_index += 1
    break if current_num.digits.length == digit_length
  end

  fibonacci.length
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847



