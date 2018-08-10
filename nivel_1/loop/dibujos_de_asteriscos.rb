# 1.- Escriba un programa que pida al usuario ingresar la altura y el ancho
# de un rectangulo y lo dibuje utilizando asteriscos:

print 'Altura: '
alt = gets.chomp.to_i
print 'Ancho: '
anc = gets.chomp.to_i

(1..alt).each do
  (1..anc).each do
    print '*'
  end
  puts
end
puts

# 2.- Escriba un programa que dibuje el triangulo del tamano indicado
# por el usuario

print 'Ingrese la altura del triángulo: '
alt = gets.chomp.to_i

(1..alt).each do |n|
  (1..n).each do
    print '*'
  end
  puts
end
puts

# Escriba un programa que dibuje el hexagono del tamano indicado
# por el usuario

print 'Ingrese el tamaño del hexágono: '
alt = gets.chomp.to_i

# parte superior del hexagono
aux = alt
space = alt
(1..alt).each do
  print ' ' * space
  (1..aux).each do
    print '*'
  end
  puts
  aux += 2
  space -= 1
end

# parte inferior del hexagono
aux -= 2
space += 1
(1..(alt - 1)).each do
  aux -= 2
  space += 1
  print ' ' * space
  (1..aux).each do
    print '*'
  end
  puts
end
