# Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.
#
# Input Format
#
# A single line of five space-separated integers.
#
# Constraints
#
# Each integer is in the inclusive range .
# Output Format
#
# Print two space-separated long integers denoting the respective minimum and maximum values that can be calculated by summing exactly four of the five integers. (The output can be greater than a 32 bit integer.)
#
# Sample Input
#
# 1 2 3 4 5
# Sample Output
#
# 10 14
# Explanation
#
# Our initial numbers are , , , , and . We can calculate the following sums using four of the five integers:
#
# If we sum everything except , our sum is .
# If we sum everything except , our sum is .
# If we sum everything except , our sum is .
# If we sum everything except , our sum is .
# If we sum everything except , our sum is .
# Hints: Beware of integer overflow! Use 64-bit Integer.

#!/bin/ruby

#
# Complete the miniMaxSum function below.
#
def miniMaxSum(arr)
  mini = [0, arr.clone]
  maxi = [0, arr.clone]
  4.times { |i|
    mini = [mini.first + mini.last.min, mini.last]
    mini.last.delete_at(mini.last.index(mini.last.min) || mini.last.length)
    maxi = [maxi.first + maxi.last.max, maxi.last]
    maxi.last.delete_at(maxi.last.index(maxi.last.max) || maxi.last.length)
  }
  [mini.first, maxi.first]
end

arr = gets.rstrip.split(' ').map(&:to_i)

fp = File.open(ENV['OUTPUT_PATH'], 'w')

result = miniMaxSum arr

fp.write result.join " "
fp.write "\n"

fp.close()
