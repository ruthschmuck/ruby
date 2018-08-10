# Escriba un programa que pida dos numeros enteros y que calcule la division,
# indicando si la division es exacta o no.

puts 'Dividend: '
dividendo = gets.chomp.to_i
puts 'Divisor: '
divisor = gets.chomp.to_i

coc = dividendo / divisor
res = dividendo % divisor

if res.zero?
  puts 'La division es exacta'
else
  puts 'La division no es exacta'
end
puts "Dividendo #{coc}"
puts "Residuo #{res}"
