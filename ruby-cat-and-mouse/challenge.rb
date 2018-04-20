# Two cats and a mouse are at various positions on a line. You will be given their starting positions. Your task is to determine which cat will reach the mouse first, assuming the mouse doesn't move and the cats travel at equal speed. If the cats arrive at the same time, the mouse will be allowed to move and it will escape while they fight.
#
# You are given  queries in the form of , , and  representing the respective positions for cats  and , and for mouse . Complete the function  to return the appropriate answer to each query, which will be printed on a new line.
#
# If cat  catches the mouse first, print Cat A.
# If cat  catches the mouse first, print Cat B.
# If both cats reach the mouse at the same time, print Mouse C as the two cats fight and mouse escapes.
# Input Format
#
# The first line contains a single integer, , denoting the number of queries.
# Each of the  subsequent lines contains three space-separated integers describing the respective values of  (cat 's location),  (cat 's location), and  (mouse 's location).
#
# Constraints
#
# Output Format
#
# For each query, return Cat A if cat  catches the mouse first, Cat B if cat  catches the mouse first, or Mouse C if the mouse escapes.
#
# Sample Input 0
#
# 2
# 1 2 3
# 1 3 2
# Sample Output 0
#
# Cat B
# Mouse C

def catAndMouse(x, y, z)
  cat_a_distance, cat_b_distance = z - x, z - y
  if cat_a_distance.abs > cat_b_distance.abs
    "Cat B"
  elsif cat_a_distance.abs == cat_b_distance.abs
    "Mouse C"
  else
    "Cat A"
  end
end

puts catAndMouse(1,2,3)
puts catAndMouse(1,3,2)
