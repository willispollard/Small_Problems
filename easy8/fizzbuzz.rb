=begin
PROBLEM

Input: two integers (starting number, ending number)
Output: output tring

Explicit rules:
- Method takes two args: starting number and ending number
  - Print out every number from the starting number to the ending number,
    except:
    - if a number is divisible by 3, output 'Fizz' instead
    - if a number is divisible by 5, output 'Buzz' instead
    - if number is divisible by 5 & 3, output 'FizzBuzz' instead

Implicit rules:

EXAMPLES

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

DATA / ALGORITHM

Define a method called fizzbuzz that takes two integers as args
- set variable numbers equal to an array made up of all integers
  in the range of the starting number to the ending number
- For each number in numbers
  - If the number mod 3 AND the number mod 5 both == 0
    - output "FizzBuzz"
  - If the number mod 3 output 'Fizz'
  - If the number mod 5 output "Buzz"
  - Else just output number


CODE
=end

def fizzbuzz(starting_num, ending_num)
  numbers = (starting_num..ending_num).to_a

  numbers.each do |num|
    case
    when num % 3 == 0 && num % 5 == 0
      puts "FizzBuzz"
    when num % 3 == 0
      puts "Fizz"
    when num % 5 == 0
      puts "Buzz"
    else
      puts num
    end
  end

  # numbers.each do |num|
  #   if num % 3 == 0 && num % 5 == 0
  #     puts "FizzBuzz"
  #   elsif num % 3 == 0
  #     puts "Fizz"
  #   elsif num % 5 == 0
  #     puts "Buzz"
  #   else
  #     puts num
  #   end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

