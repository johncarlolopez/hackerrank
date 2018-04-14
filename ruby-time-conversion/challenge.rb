# Given a time in -hour AM/PM format, convert it to military (24-hour) time.
#
# Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.
#
# Input Format
#
# A single string  containing a time in -hour clock format (i.e.:  or ), where  and .
#
# Output Format
#
# Convert and print the given time in -hour format, where .
#
# Sample Input
#
# 07:05:45PM
# Sample Output
#
# 19:05:45


def timeConversion(s)
  time = s.split(':')
  if time.first == "12" && time.last[-2..-1] == 'AM'
    time[0] = time.first.to_i - 12
  elsif time.first != "12" && time.last[-2..-1] == 'PM'
    time[0] = time.first.to_i + 12
  end
  time.last.gsub!(/[PM AM pm am]/, '')
  # required to add leading zero to pass all hackerrank tests
  time[0] = '0' + time[0].to_s if time[0].to_s.size <= 1
  time.join(":")
end
