# PROBLEM

# Create a simple mad-lib program that prompts for a noun, a verb, 
# an adverb, and an adjective and injects those into a story that 
# you create.

# Input:
# - String

# Output:
# - String

# Explicit Reqs:
# - Create a madlib program that asks for a noun, verb, adverb, and
#   adjective
#   - Program should inject those into a story that you create

# Implicit Reqs:


# EXAMPLES

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# PSEUDO-CODE 

puts "Enter a noun:"
noun = gets.chomp

puts "Enter a name:"
name = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter an adverb"
adverb = gets.chomp

puts "In town there is a #{adjective} #{noun} named #{name}. #{name} #{verb}s so #{adverb}, everyone in town knows who he is."

