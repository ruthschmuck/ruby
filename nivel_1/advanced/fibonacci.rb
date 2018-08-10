# secuencia de Fibonacci

require './func_fibb'

puts 'Ingrese 1 para clacular el Fibonacci de un número'
puts 'Ingrese 2 para saber si un numero es Fibonacci'
puts 'Ingrese 3 para saber los m primeros números Fibonacci'
op = gets.chomp.to_i
case op
when 1
  primer
when 2
  segundo
when 3
  tercer
end
