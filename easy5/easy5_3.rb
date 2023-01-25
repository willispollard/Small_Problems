
MINUTES_IN_HOUR = 60 
MINUTES_PER_DAY = 1440

def after_midnight(string)
  hours = string[0..1].to_i
  minutes = string[-2..-1].to_i

  total_minutes = (hours * MINUTES_IN_HOUR) + minutes
  total_minutes = 0 if string == '24:00'
  total_minutes
end

def before_midnight(string)
  delta_minutes = MINUTES_PER_DAY - after_midnight(string)

  delta_minutes = 0 if string == '24:00' || string == '00:00'
  delta_minutes
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0