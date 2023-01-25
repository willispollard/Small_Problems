# PEDAC

# PROBLEM

# Write a method that will take a short line of text, and print it within a box.

# Input:
# - String

# Output:
# - String contained inside of a box

# Explicit Reqs:
# - Method should take a string and print it within a box

# Implicit Reqs:
# - Characters for the box shown in the examples
# - An empty string should return an empty box

# EXAMPLES

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# DATA / ALGORITHM

# - Strings

# - Define a method called print_in_box
#   - puts 5 separate lines
#     - line 1: + plus (for each char in string put - plus 2) plus +
#     - line 2: | plus (length of string + 2) plus |
#     - line 3: | plus (string) plus |
#     - line 4: | plus (length of string + 2) plus |
#     - line 5: + plus (for each char in string put - plus 2) plus +

# CODE

# def print_in_box(string)
#   puts "+-#{ '-' * string.length }-+"
#   puts "| #{ ' ' * string.length } |"
#   puts "| #{string} |"
#   puts "| #{ ' ' * string.length } |"
#   puts "+-#{ '-' * string.length }-+"
# end

# print_in_box('hi')
# print_in_box('')
# print_in_box('To boldly go where no one has gone before.')


def print_in_box(string)

  max_length = 76
  
  ((string.length / max_length) + 1).times do 
    puts "+-#{ '-' * string[0..75].length }-+"
    puts "| #{ ' ' * string[0..75].length } |"
    puts "| #{string[0..75]} |"
    puts "| #{ ' ' * string[0..75].length } |"
    puts "+-#{ '-' * string[0..75].length }-+"

    string = string[76..-1]
  end
end

print_in_box('hi')
print_in_box('')
print_in_box('To boldly go where no one has gone before.')
print_in_box('For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.')
print_in_box('I shall be telling this with a sigh, Somewhere ages and ages hence: Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference.')
