# PEDAC

# PROBLEM

# Write a method that takes a floating point number that represents an angle 
# between 0 and 360 degrees and returns a String that represents that angle in 
# degrees, minutes and seconds. You should use a degree symbol (°) to represent 
# degrees, a single quote (') to represent minutes, and a double quote (") to 
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Input:
# - Float

# Output:
# - String

# Explicit Reqs:
# - Method should take a floating point number that represents an angle 
#   between 0 and 360 degrees.
#   - Method should return a string that represents the angle in degrees,
#     minutes, and seconds.
#   - Use a degree symbol to represent degrees, a single quote (') to represent
#     minutes, and a double quote (") to represent seconds
#   - Use two digit numbers with leading 0s when formatting the minutes and seconds
#   - Use this constant to represent the degree symbol: DEGREE = "\xC2\xB0"
#   - Results may be a little different from examples but should only
      # vary by a second or two

# Implicit Reqs:
#   - 360 degrees can equal either %(360°00'00") or %(0°00'00")

# EXAMPLES

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# DATA / ALGORITHM

# Floats and Strings

# - Initialize constant DEGREE = "\xC2\xB0"
# - Define a method dms that takes a float 
#   - degrees equal float.to_i
#   - minutes equal ((float - float.to_i) * 60)).to_i
#   - seconds equal ((((float - float.to_i) * 60)) - (((float - float.to_i) * 60)).to_i)) * 60)).to_i
#   - puts "#{degrees}#{DEGREE}#{minutes.to_s.rjust(2, 0)}'#{seconds.to_s.rjust(2, 0)}\""


# CODE

DEGREE = "\xC2\xB0"

# def dms(float)
#   degrees = float.to_i
#   minutes = (((float - degrees) * 60)).to_i
#   seconds = (((((float - degrees) * 60)) - minutes) * 60).to_i

#   "#{degrees}#{DEGREE}#{minutes.to_s.rjust(2, '0')}'#{seconds.to_s.rjust(2, '0')}\""
# end

def dms(float)
  while float > 360.0
    float -= 360.0
  end

  while float < 0.0
    float += 360.0
  end

  degrees = float.to_i
  minutes = (((float - degrees) * 60)).to_i
  seconds = (((((float - degrees) * 60)) - minutes) * 60).to_i

  "#{degrees}#{DEGREE}#{minutes.to_s.rjust(2, '0')}'#{seconds.to_s.rjust(2, '0')}\""
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")
puts dms(1000) == %(280°00'00")
puts dms(-800) == %(280°00'00")






