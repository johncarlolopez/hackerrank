# Brie’s Drawing teacher asks her class to open their books to a page number. Brie can either start turning pages from the front of the book or from the back of the book. She always turns pages one at a time. When she opens the book, page  is always on the right side:
#
# image
#
# When she flips page , she sees pages  and . Each page except the last page will always be printed on both sides. The last page may only be printed on the front, given the length of the book. If the book is  pages long, and she wants to turn to page , what is the minimum number of pages she will turn? She can start at the beginning or the end of the book.
#
# Given  and , find and print the minimum number of pages Brie must turn in order to arrive at page .
#
# Input Format
#
# The first line contains an integer , the number of pages in the book.
# The second line contains an integer, , the page that Brie's teacher wants her to turn to.
#
# Constraints
#
# Output Format
#
# Print an integer denoting the minimum number of pages Brie must turn to get to page .
#
# Sample Input 0
#
# 6
# 2
# Sample Output 0
#
# 1
# Explanation 0
#
# If Brie starts turning from page , she only needs to turn  page:
#
# Untitled Diagram(6).png
#
# If Brie starts turning from page , she needs to turn  pages:
#
# Untitled Diagram(3).png
#
# Because we want to print the minumum number of page turns, we print  as our answer.
#
# Sample Input 1
#
# 5
# 4
# Sample Output 1
#
# 0
# Explanation 1
#
# If Brie starts turning from page , she needs to turn  pages:
#
# Untitled Diagram(4).png
#
# If Brie starts turning from page , she doesn't need to turn any pages:
#
# Untitled Diagram(5).png
#
# Because we want to print the minimum number of page turns, we print  as our answer.

def pageCount(n, p)
  pages = n / 2
  turns = p / 2.0 > pages / 2.0 ? pages - p / 2 : p / 2
  puts "pages:#{pages} turns:#{turns}"
  turns
end

# pageCount(5,4)


# [-,1]
# [2,3]
# [4,5]
# [6,-]
