# Escriba un programa que genere todas las potencias de 2
# desde la 0-esima hasta la ingresada por el usuario:

puts 'ingrese un número'
num = gets.chomp.to_i

(num + 1).times { |n| puts 2**n }
