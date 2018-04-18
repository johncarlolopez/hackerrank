# John works at a clothing store. He has a large pile of socks that he must pair them by color for sale.
#
# You will be given an array of integers representing the color of each sock. Determine how many pairs of socks with matching colors there are.
#
# John works at a clothing store and he's going through a pile of socks to find the number of matching pairs. More specifically, he has a pile of  loose socks where each sock  is labeled with an integer, , denoting its color. He wants to sell as many socks as possible, but his customers will only buy them in matching pairs. Two socks,  and , are a single matching pair if they have the same color ().
#
# Given  and the color of each sock, how many pairs of socks can John sell?
#
# Input Format
#
# The first line contains an integer , the number of socks.
# The second line contains  space-separated integers describing the colors  of the socks in the pile.
#
# Constraints
#
#  where
# Output Format
#
# Print the total number of matching pairs of socks that John can sell.
#
# Sample Input
#
# 9
# 10 20 20 10 10 30 50 10 20
# Sample Output
#
# 3

# First try - works but inefficient in that it loops through each initial sock
def sockMerchant(n, ar)
  unpaired = ar.clone
  pairs = 0
  ar.each { |sock|
    break if unpaired.size == 0
    if unpaired.count{ |x| x == sock} >= 2
      unpaired.delete_at(unpaired.index(sock) || li.length) * 2
      pairs += 1
    end
  }
  pairs
end

# Second try - more efficient by using while loop to update array after each pairing
def sockMerchant2(n, ar)
  pairs = 0
  sorted = false
  while !sorted
    ar.each_with_index { |sock, i|
      if ar.count{ |x| x == sock } >= 2
        2.times { ar.delete_at(ar.index(sock) || li.length) }
        pairs += 1
        sorted = true if ar.empty?
        break
      elsif i == ar.size - 1
        sorted = true
        break
      end
    }
  end
  pairs
end

# possible third try - keep track at what index was reached
# there is a case where each unpairable sock will still be looped over

p sockMerchant2(1,[1,1,2,2,3,3,4,4,5,5])
