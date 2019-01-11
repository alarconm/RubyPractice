# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

# convert minutes to hours if > 60
# use modulo operator to get remainder of minutes

def time_conversion(minutes)
  if minutes >= 60
    hours = minutes / 60
  else
    hours = 0
  end

  remainder = minutes % 60
  if remainder < 10
    remainder_start = 0
    remainder = remainder_start.to_s + remainder.to_s
  end

  return hours.to_s + ":" + remainder.to_s
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #time_conversion")
puts("===============================================")
    puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
    puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
    puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
puts("===============================================")