# PEP

# PROBLEM

# Write a method that takes a positive integer, n, as an argument, 
# and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images 
# below) should have one end at the lower-left of the triangle, 
# and the other end at the upper-right.

# Input:
# - Positive integer
# Output:
# - String

# Explicit Reqs:
# - Method takes a positive integer (n) and displays a right triangle
#   with sides that have a n stars
# - The hypotenuse should have one end at the lower-left and the other
#   end at the upper-right.

# Implicit Reqs:
# - I assume output should be a string.

# EXAMPLES

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****


# PSUEDO-CODE

# - Define a method called triangle
#   - Set array
#   - Push integer * spaces into the array
#   - Integer.times remove the first item in the array and add a star

# DEF triangle(n)
#   arr = []
#   n.times { arr << " " }
#   n.times do
#     arr << *
#     arr.delete_at(0)
#     puts arr.join
#   END
# END

# def triangle(n)
#   arr = []
#   n.times { arr << " " }
#   n.times do
#     arr << "*"
#     arr.delete_at(0)
#     puts arr.join('')
#   end
# end

# def triangle(num)
#   spaces = 0
#   stars = num

#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces += 1
#     stars -= 1
#   end
# end

def triangle(num, right_angle = "bottom left")
  case right_angle
  when "bottom right"
    bottom_right(num)
  when "bottom left"
    bottom_left(num)
  when "top right"
    top_right(num)
  when "top left"
    top_left(num)
  end
end

def bottom_right(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

def bottom_left(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts ('*' * stars) + (' ' * spaces)
    spaces -= 1
    stars += 1
  end
end

def top_right(num)
  spaces = 0
  stars = num

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end

def top_left(num)
  spaces = 0
  stars = num

  num.times do |n|
    puts ('*' * stars) + (' ' * spaces)
    spaces += 1
    stars -= 1
  end
end


triangle(5, "bottom left")
triangle(9, "bottom left")

