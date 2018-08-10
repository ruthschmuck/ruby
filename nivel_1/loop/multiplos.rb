# Escriba un programa que muestre la tabla de multiplicar del 1 al 10

puts 'Ingrese un número'
num = gets.chomp.to_i

10.times { |n| puts "#{num} X #{n + 1} = #{num * (n + 1)}" }
