h = {x: 1, y: 2}

h[:z] = 3

print h

h[:x] = 5

puts h

h.delete(:y)
p h

h.each_key {|k| puts 'yeahh!!' if k == :z }

puts h.invert