# You are given an array of  integers, , and a positive integer, . Find and print the number of  pairs where  and  +  is divisible by .
#
# Input Format
#
# The first line contains  space-separated integers,  and .
# The second line contains  space-separated integers describing the values of .
#
# Constraints
#
# Output Format
#
# Print the number of  pairs where  and  +  is evenly divisible by .
#
# Sample Input
#
# 6 3
# 1 3 2 6 1 2
# Sample Output
#
#  5

def divisibleSumPairs(n, k, ar)
  combinations = ar.combination(2).to_a.count{ |pair| pair.reduce(:+) % k == 0  }
end
