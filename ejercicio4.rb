personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

h = Hash[personas.zip edades]

p h

def method_name(hash, key)
	hash[key]
end

puts method_name(h, 'Carolina')

