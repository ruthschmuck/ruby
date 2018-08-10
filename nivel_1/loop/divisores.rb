# Escriba un programa que entregue todos los divisores del numero
# entero ingresado:

puts 'Ingrese un número'
num = gets.chomp.to_i

print '1 '
(2..(num - 1)).each do |div|
  aux = num % div
  print aux.zero? ? "#{div} " : nil
end
print num
puts
