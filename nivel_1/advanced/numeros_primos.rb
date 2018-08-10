# Un numero primo es un numero natural que solo es divisible por 1 y por si
# mismo.

# Los numeros que tienen mas de un divisor se llaman numeros compuestos.
# El numero 1 no es ni primo ni compuesto.

require './func_primo'

puts 'Escriba la opción 1 para saber si un número es primo o es compuesto'
puts 'Escriba la opción 2 para imprimir n primeros números primos'
puts 'Escriba la opción 3 para imprimir los números primos menores a m'
puts 'Escriba la opción 4 para mostrar la cantidad primos menores a m'
puts 'Escriba la opción 5 para mostar los factores primos de un número'
puts 'Escriba la opción 6 para mostar la suma de los numeros primos'
puts 'Escriba la opción 7 para mostar otro sub-menú'
op = gets.chomp.to_i
case op
when 1
  # Recibe como entrada un numero natural,
  # e indique si es primo o compuesto:
  print 'Ingrese un número: '
  num = gets.chomp.to_i
  if num == 1
    puts 'El número 1 no es primo ni compuesto'
  else
    puts es_primo?(num) ? "#{num} es primo" : "#{num} es compuesto"
  end
when 2
  # Recibe como entrada un n, e imprime los n primeros numeros primos
  print 'Cuántos primos: '
  num = gets.chomp.to_i
  imprimir_primos(num)
when 3
  # Recibe como entrada un m y Muestr los numeros primos menores que m
  print 'Numeros menores que: '
  num = gets.chomp.to_i
  primos = primos_menores(num - 1)
  puts primos
when 4
  # Recibe como entrada un m y cuenta los numeros primos menores que m
  print 'Numeros menores que: '
  num = gets.chomp.to_i
  primos = primos_menores(num - 1)
  puts primos.length
when 5
  # Recibe como entrada un n e imprime sus factores primos
  print 'Ingrese numero: '
  num = gets.chomp.to_i
  fac_primos = factores_primos(num)
  puts fac_primos
when 6
  # reciba un numero par como entrada y muestre todas las maneras en que puede
  # ser escrito como una suma de dos primos:
  print 'Ingrese el número par: '
  num = gets.chomp.to_i
  primos = sumar_primos(num)
  primos.each do |arr|
    i = 0
    puts "#{arr[i]} + #{arr[i + 1]}"
  end
when 7
  system 'clear'
  print "Escriba la opción 1 para determinar Cuántos primos menores que diez \
mil terminan en 7?\n"
  print "Escriba la opción 2 para determinar la suma de los primos menor a \
1000 al cuadrado\n"
  print "Escriba la opción 3 para determinar el producto de todos los primos \
menores a 100 que tengan un 7 como dígito\n"
  op = gets.chomp.to_i
  case op
  when 1
    puts primos_terminan_siete
  when 2
    puts suma_primos_cuadrados
  when 3
    puts mult_primos_con_siete
  end
end
