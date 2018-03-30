# Diagonal Difference challenge from Hacker Rank: https://www.hackerrank.com/challenges/diagonal-difference/problem
#
# Given a square matrix, calculate the absolute difference between the sums of its diagonals.
#
# Input Format
#
# The first line contains a single integer,  denoting the number of rows and columns in the matrix .
# The next  lines denote the matrix 's rows, with each line containing  space-separated integers describing the columns.
#
# Constraints
#
# Output Format
#
# Print the absolute difference between the sums of the matrix's two diagonals as a single integer.
#
# Sample Input
#
# 3
# 11 2 4
# 4 5 6
# 10 8 -12
# Sample Output
#
# 15
# Explanation
#
# The primary diagonal is:
#
# 11
#    5
#      -12
# Sum across the primary diagonal: 11 + 5 - 12 = 4
#
# The secondary diagonal is:
#
#      4
#    5
# 10
# Sum across the secondary diagonal: 4 + 5 + 10 = 19
# Difference: |4 - 19| = 15
#
# Note: |x| is the absolute value of x

def diagonalDifference(a)
  sums = []
  sums << a.each_with_index.map { |row, i| row[i] }.compact.reduce(:+)
  sums << a.each_with_index.map { |row, i| row[-1 - i] }.compact.reduce(:+)
  sums.max - sums.min
end
