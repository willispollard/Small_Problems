# PEDAC

# PROBLEM

# Write a method that searches for all multiples of 3 or 5 that 
# lie between 1 and some other number, and then computes the sum 
# of those multiples. For instance, if the supplied number is 20, 
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# Input:
# - Integer

# Output:
# - Integer

# Explicit Reqs:
# - Method searches for all multiples of 3 and 5 from 1 to input integer
# - Method computes the sum of all multiples

# Implicit Reqs:
# - Use integers

# EXAMPLES

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# DATA / ALGORITHM

# Integers

# - Define method multisum that takes one integer as an argument
#   - Initialize variable multiples and set it to an empty array
#   - Set range of 1 to input integer equal to a new array
#     - If numbers in array are divisible by 3 or 5, add them to 
#       multiples array
#       - Call #sum method on multiples array

# CODE

# def multisum(num)
#   multiples = []
#   range = (1..num).to_a

#   range.each do |number|
#     if (number % 3 == 0) || (number % 5 == 0)
#       multiples << number
#     end
#   end

#   multiples.sum
# end

# def multisum(num)
#   range = (1..num).to_a

#   multiples = range.select do |number|
#     (number % 3 == 0) || (number % 5 == 0)
#   end

#   multiples.sum
# end

def multisum(num)
  multiples = (1..num).to_a.select do |number|  
    (number % 3 == 0) || (number % 5 == 0)
  end

  multiples.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

