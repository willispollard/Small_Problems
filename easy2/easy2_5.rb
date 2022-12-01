# PEDAC 

# PROBLEM

# Write a program that will ask for user's name. 
# The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

# Input:
# - String

# Output:
# - String

# Explicit Reqs:
# - Program asks for user to input their name
# - Program will greet this user
# - If the user puts '!' at the end of their input the program yells back

# Implicit Reqs:
# - If user inputs an '!', the computer's response should be in caps

# EXAMPLES

# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# DATA / ALGORITHM

# Strings
  
# - Prompt user to input their name
#   - Set variable name to user input
# - If string ends with '!' puts string greeting in all caps
# - Else puts string that greets user


puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?!"
else
  puts "Hello #{name}."
end

