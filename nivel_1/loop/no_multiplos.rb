# Escriba un programa que muestre los numeros naturales menores o iguales que
# un numero n determinado, que no sean multiplos ni de 3 ni de 7.

print 'Ingrese el número: '
num = gets.chomp.to_i

(1..(num - 1)).each do |var|
  puts var unless (var % 3).zero? || (var % 7).zero?
end
