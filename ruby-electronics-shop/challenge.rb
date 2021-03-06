# Monica wants to buy a keyboard and a USB drive from her favorite electronics store. The store has several models of each. Monica wants to spend as much as possible for the  items, given her budget.
#
# Given the price lists for the store's keyboards and USB drives, and Monica's budget, find and print the amount of money Monica will spend. If she doesn't have enough money to both a keyboard and a USB drive, print -1 instead. She will buy only the two required items.
#
# For example, suppose she has  to spend. Three types of keyboards cost . Two USB drives cost . She could purchase a , or a . She chooses the latter. She can't buy more than  items so she can't spend exactly .
#
# Input Format
#
# The first line contains three space-separated integers , , and , her budget, the number of keyboard models and the number of USB drive models.
# The second line contains  space-separated integers , the prices of each keyboard model.
# The third line contains  space-separated integers , the prices of the USB drives.
#
# Constraints
#
# The price of each item is in the inclusive range .
# Output Format
#
# Print a single integer denoting the amount of money Monica will spend. If she doesn't have enough money to buy one keyboard and one USB drive, print -1 instead.
#
# Sample Input 0
#
# 10 2 3
# 3 1
# 5 2 8
# Sample Output 0
#
# 9
# Explanation 0
#
# She can buy the  keyboard and the  USB drive for a total cost of .
#
# Sample Input 1
#
# 5 1 1
# 4
# 5
# Sample Output 1
#
# -1

def getMoneySpent(keyboards, drives, b)
  permutations = keyboards.map { |keyboard|
    drives.map { |drive| keyboard + drive }
  }.flatten!
  under_budget = permutations.select { |permutation| permutation <= b }
  under_budget.empty? ? -1 : under_budget.max
end
