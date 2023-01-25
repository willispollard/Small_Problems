=begin

method sequence should get an array of numbers from 1 to the
integer passed in as an arg.

=end

# def sequence(integer)
#   (1..integer).to_a
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# further exploration

def sequence(integer)
  if integer > 0
    (1..integer).to_a
  elsif integer == 0
    [0]
  else
    (integer..-1).to_a
  end
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5)
p sequence(0)