productos = {'bebida' => 850, 'chocolate' => 1200,
'galletas' => 900, 'leche' => 750}

productos.each { | producto, valor| puts producto }

productos['cereal'] = 2200

p productos

productos['bebida'] = 2000

p productos

product = productos.to_a

p product

productos.delete('galletas')

p productos