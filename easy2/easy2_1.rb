# PEDAC 

# PROBLEM

# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# Input:
# - String

# Output:
# - String

# Explicit Reqs:
# - Ages should random
# - Ages should be between 20 and 200

# Implicit Reqs:
# - Age should be an integer

# EXAMPLES

# Teddy is 69 years old!


# DATA / ALGORITHM

# Strings and Integers

# - Set a variable called age equal to a random integer 
#   between 20 and 200 using the #rand method
# - puts a string that includes the age variable


age = rand(20..200)
name = ''

loop do
  puts "Enter a name please: "
  name = gets.chomp.to_s

  if name.chars.empty?
    puts "That's not a name."
  else
    break
  end
end


puts "#{name} is #{age} years old!"





