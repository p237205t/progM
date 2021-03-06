# -*- coding: utf-8 -*-

def f(x)
  return eval($func)
end

puts "Input f(x)"
$func = gets.chop

# Initialize frame buffer
# frame buffer x=0..79, y=0..24
frame = []
24.times do
  line = []
  line << '|'
  79.times do
    line << ' '
  end
  frame << line
end
line = ['+']
79.times do
  line << '-'
end
frame << line

# X label
frame[23][78] = 'X'

# Y label
frame[0][1] = 'Y'

# draw func
frame[0][19] = 'y='
for x in 20..20+($func.length) do
  frame[0][x]=$func[x-20]
end

### 分担3
###

# draw graph
for x in 0..79 do
### 分担2
  y=f(x.to_f / 80)
  #puts y
  y=24-y*24
  puts y
  frame[y][x] = '*'


end

# printout
frame.each do |line|
  line.each do |ch|
    print ch
  end
  print "\n"
end
