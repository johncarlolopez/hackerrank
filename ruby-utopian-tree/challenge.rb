# The Utopian Tree goes through 2 cycles of growth every year. Each spring, it doubles in height. Each summer, its height increases by 1 meter.
#
# Laura plants a Utopian Tree sapling with a height of 1 meter at the onset of spring. How tall will her tree be after  growth cycles?
#
# Input Format
#
# The first line contains an integer, , the number of test cases.
#  subsequent lines each contain an integer, , denoting the number of cycles for that test case.
#
# Constraints
#
#
#
# Output Format
#
# For each test case, print the height of the Utopian Tree after  cycles. Each height must be printed on a new line.
#
# Sample Input
#
# 3
# 0
# 1
# 4
# Sample Output
#
# 1
# 2
# 7
# Explanation
#
# There are 3 test cases.
#
# In the first case (), the initial height () of the tree remains unchanged.
#
# In the second case (), the tree doubles in height and is  meters tall after the spring cycle.
#
# In the third case (), the tree doubles its height in spring (, ), then grows a meter in summer (, ), then doubles after the next spring (, ), and grows another meter after summer (, ). Thus, at the end of 4 cycles, its height is  meters.

# def utopianTree(n)
#   double = true
#   n.map { |seasons|
#     length = 1
#     season.times { |i|
#       double ? length *= 2 : length += 1
#       double = !double
#     }
#   }
# end

def utopianTree2(n)
  double = true
  length = 1
  n.times { |i|
    double ? length *= 2 : length += 1
    double = !double
  }
  length
end
