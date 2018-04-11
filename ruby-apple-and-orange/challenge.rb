# Sam's house has an apple tree and an orange tree that yield an abundance of fruit. In the diagram below, the red region denotes his house, where  is the start point, and  is the endpoint. The apple tree is to the left of his house, and the orange tree is to its right. You can assume the trees are located on a single point, where the apple tree is at point , and the orange tree is at point .
#
# Apple and orange(2).png
#
# When a fruit falls from its tree, it lands  units of distance from its tree of origin along the -axis. A negative value of  means the fruit fell  units to the tree's left, and a positive value of  means it falls  units to the tree's right.
#
# Complete the function countApplesAndOranges,
#
# where,
#
#  Starting point of Sam's house location.
#  Ending location of Sam's house location.
#  Location of the Apple tree.
#  Location of the Orange tree.
#  Number of apples that fell from the tree.
#  Distance at which each apple falls from the tree.
#  Number of oranges that fell from the tree.
#  Distance at which each orange falls from the tree.
#
# Given the value of  for  apples and  oranges, can you determine how many apples and oranges will fall on Sam's house (i.e., in the inclusive range )? Print the number of apples that fall on Sam's house as your first line of output, then print the number of oranges that fall on Sam's house as your second line of output.
#
# Input Format
#
#  space-separated integers
#
#  and , left and right sides of Sam’s house
#  space-separated integers
#
#  and , Larry’s and Rob’s positions in the trees
#  space-separated integers
#
#  and , number of apples and oranges thrown
#  space-separated integers
#
# distances  that each apple falls from
#  space-separated integers
#
# distances  that each orange falls from
# Output Format
#
# 2 space-separated integers on a line: Larry’s score followed by Rob’s score.
#
# Sample Input 0
#
# 7 11
# 5 15
# 3 2
# -2 2 1
# 5 -6
# Sample Output 0
#
# 1 1
# Explanation 0
#
# The first apple falls at position .
# The second apple falls at position .
# The third apple falls at position .
# The first orange falls at position .
# The second orange falls at position .
# Only one fruit (the second apple) falls within the region between  and , so we print  as our first line of output.
# Only the second orange falls within the region between  and , so we print  as our second line of output.

def countApplesAndOranges(s, t, a, b, apples, oranges)
  apples = apples.map { |apple| a + apple}
  oranges = oranges.map { |orange| b + orange}
  puts tally = [
    apples.select{ |distance| distance >= s && distance <= t}.count,
    oranges.select{ |distance| distance >= s && distance <= t}.count
  ]
end
