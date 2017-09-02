inventario = {"Notebooks": 4, "Computador Escritorio": 6, "Routers": 10,
"Impresoras": 6}

def add_element(hash)
	puts 'Agrega un item, ejemplo: Pendrive, 100'
	input = gets.chomp.split(',').map{ |elem| elem.strip }
	hash[input[0].to_sym] = input [1].to_i
	print hash
end

def update_element(hash)
	p hash
	puts 'Ingresa el ìtem a editar'
	update_element = gets.chomp.split.map(&:capitalize).join(' ')
	puts 'Ingresa el nuevo stock'
	update_stock = gets.chomp
	hash[update_element.to_sym] = update_stock.to_i
	p hash	
end

def delete_elemet(hash)
	puts 'Ingresa el ìtem a borrar'
	p hash
	choice = gets.chomp.split.map(&:capitalize).join(' ')
	hash.delete(choice.to_sym) { |ele| puts "#{ele} no se encuentra en el inventario"} 
	p hash
	
end

def stock_summary(hash)
	stock = hash.values.inject(0){ |sum, v| sum + v}
	puts "El inventario actualmente tiene #{stock}"	
end

def max_stock(hash)
	max = hash.max_by { |key, value| value}
	puts "El producto con mayor stock es: #{max[0].to_s}"
end

def item_exist(hash)
	puts 'Ingresa el producto'
	p hash
	item = gets.chomp.split.map(&:capitalize).join(' ').to_sym
	result = hash[item]
	puts "El producto #{item.to_s}" 
	result ? "esta en el inventario" : 
	"no esta en el inventario"
end

puts 'Sistema de inventario'
puts	'press enter'

option = gets.chomp

while option != '7'
	
	puts 'Ingresa 1 para agregar'
	puts 'Ingresa 2 para elimina'
	puts 'Ingresa 3 para actualizar'
	puts 'Ingresa 4 para ver el resumen del stock'
	puts 'Ingresa 5 para ver el item con mayor cantidad stock'
	puts 'Ingresa 6 para buscar un Item'
	puts 'Ingresa 7 para salir'

option = gets.chomp
puts case  option
		when '1'
			add_element(inventario)
		when '2'
			delete_elemet(inventario)
		when '3'
			update_element(inventario)
		when '4' 
			stock_summary(inventario)
		when '5'
			max_stock(inventario)
		when '6'
			item_exist(inventario)
		else
			'Ingresa un número del 1 al 7'
	end
end		
