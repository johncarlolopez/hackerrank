# An English text needs to be encrypted using the following encryption scheme. 
# First, the spaces are removed from the text. Let  be the length of this text.
# Then, characters are written into a grid, whose rows and columns have the following constraints:
#
# For example, the sentence if man was meant to stay on the ground god would have given us roots after removing spaces is  characters long.  is between  and , so it is written in the form of a grid with 7 rows and 8 columns.
#
# ifmanwas
# meanttos
# tayonthe
# groundgo
# dwouldha
# vegivenu
# sroots
# Ensure that
# If multiple grids satisfy the above conditions, choose the one with the minimum area, i.e. .
# The encoded message is obtained by displaying the characters in a column, inserting a space, and then displaying the next column and inserting a space, and so on. For example, the encoded message for the above rectangle is:
#
# imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau
#
# You will be given a message to encode and print.
#
# Input Format
#
# One line of text, the string
#
# Constraints
#
#
#  is comprised only of characteres in the range ascii[a-z].
#
# Output Format
#
# Print the encoded message on one line as described.
#
# Sample Input
#
# haveaniceday
# Sample Output:
#
# hae and via ecy
# ,  is between  and  Rewritten with  rows and  columns:
#
# have
# anic
# eday
# Sample Input 1:
#
# feedthedog
# Sample Output 1:
#
# fto ehg ee dd
# Sample Input 2:
#
# chillout
# Sample Output 2:
#
# clu hlt io

def encryption(s)
  grid = []
  ans = ''
  chars = s.delete(' ')
  columns, rows = Math.sqrt(chars.length).ceil, Math.sqrt(chars.length).floor
  rows = columns if rows * columns < chars.length
  rows.times { |row| grid << chars[(row * (columns))..((row + 1) * columns - 1)].chars }
  columns.times { |column|
    rows.times { |row| ans += grid[row][column] || '' }
    ans += ' '
  }
  return ans.strip
end
