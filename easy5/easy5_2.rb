# PEDAC

# PROBLEM

# The time of day can be represented as the number of minutes before 
# or after midnight. If the number of minutes is positive, the time 
# is after midnight. If the number of minutes is negative, the time 
# is before midnight.

# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). Your method 
# should work with any integer input.

# You may not use Date and Time classes.

# Input:
# - Integer

# Output:
# - String

# Explicit Reqs:
# - Positive numbers indicate after midnight, negative numbers indicate
#   before midnight
# - Write a method that takes a time using minute-based format and
#   returns the time of day in 24 hour format (hh:mm)
# - Method should work with any integer input
# - Cannot use the #Date or #Time classes

# Implicit Reqs:
# - Output should be a string


# EXAMPLES

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# DATA / ALGORITHM

# Integer and String

# - Initialize constants for the minutes in an hour, hours per day,
#   and minutes per day
# - Define method time_of_day that takes an integer as an argument
#   - set new variables hours & minutes both equal to 0
#   - hours = integer divided by HOUR
#   - minutes = integer % HOUR
#   - Convert hours and minutes to arrays
#     - For each array, if array.size < 2 then put a 0
#       at the front of it
#     - Call #join on each array
#     - Puts array1 + : + array2

# CODE

MINUTES_IN_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = 1440

def time_of_day(mins)
  if mins.negative?
    positive_mins = mins * -1
    mins = ((positive_mins/1440) + 1) * 1440 - positive_mins
  end

  if mins >= MINUTES_PER_DAY
    mins = mins % MINUTES_PER_DAY
  end

  hours = (mins / MINUTES_IN_HOUR).digits.reverse
  minutes = (mins % MINUTES_IN_HOUR).digits.reverse

  hours.unshift(0) if hours.size < 2
  minutes.unshift(0) if minutes.size < 2

  "#{hours.join}:#{minutes.join}"
end

# puts time_of_day(0) == "00:00"
# puts time_of_day(-3) == "23:57"
# puts time_of_day(35) == "00:35"
# puts time_of_day(-1437) == "00:03"
# puts time_of_day(3000) == "02:00"
# puts time_of_day(800) == "13:20"
# puts time_of_day(-4231) == "01:29"

# FURTHER EXPLORATION

DAY_OF_WEEK = {
  0 => 'Sunday',
  1 => 'Monday',
  2 => 'Tuesday',
  3 => 'Wednesday',
  4 => 'Thursday',
  5 => 'Friday',
  6 => 'Saturday'
}

def day_plus_time(mins)
  t = Time.new(2022, 12, 11)
  seconds = mins * 60

  overall_time = t + seconds

  day = DAY_OF_WEEK[overall_time.wday]

  "#{day} " + "#{time_of_day(mins)}"
end

puts day_plus_time(0)
puts day_plus_time(-3)
puts day_plus_time(35)
puts day_plus_time(-1437)
puts day_plus_time(3000)
puts day_plus_time(800)
puts day_plus_time(-4231)








