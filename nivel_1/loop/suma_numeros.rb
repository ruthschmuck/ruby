# Escriba un programa que pida al usuario dos numeros enteros, y luego entregue
# la suma de todos los numeros que estan entre ellos

puts 'Ingrese el numero de inicio'
x = gets.chomp.to_i
puts 'Ingrese el número final'
y = gets.chomp.to_i

cont = 0
(x..y).each { |n| cont += n }

puts cont - (y + x)
