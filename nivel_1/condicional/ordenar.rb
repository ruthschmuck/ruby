# escriba un programa que ordene cuatro numeros:

numeros = []

puts 'Ingrese el primer numero:'
numeros << gets.chomp.to_i
puts 'Ingrese el segundo numero:'
numeros << gets.chomp.to_i
puts 'Ingrese el tercer numero:'
numeros << gets.chomp.to_i
puts 'Ingrese el cuarto numero:'
numeros << gets.chomp.to_i

numeros.sort!

puts numeros
