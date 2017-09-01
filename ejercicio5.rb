meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h = Hash[meses.zip ventas]

p h=h.invert

h = h.max_by{|k,v| k }

puts h[1]