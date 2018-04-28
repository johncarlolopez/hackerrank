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
