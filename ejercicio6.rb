restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

 expensive = restaurant_menu.max_by{|k,v| v }

 puts expensive[0]

cheapets = restaurant_menu.min_by{|k,v| v }

puts cheapets[0]

suma = restaurant_menu.values.inject(0){ |sum , x| sum + x  }

puts suma/ restaurant_menu.size

dishes = restaurant_menu.keys 
print dishes

prices = restaurant_menu.values
print prices

iva = restaurant_menu.each{|k, v| restaurant_menu[k] = v * 1.19}
puts ''
puts iva

special = restaurant_menu.select{ |k,v| k.split.size >1}

puts special

special.each{|k, v| special[k] = v * 0.8 }

puts special