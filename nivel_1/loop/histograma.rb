# Escriba un programa que pida al usuario que ingrese varios valores enteros,
# que pueden ser positivos o negativos. Cuando se ingrese un cero, el
# programa debe terminar y mostrar un grafico de cuantos valores positivos
# y negativos fueron ingresados:

puts 'Ingrese los numeros:'

neg = 0
pos = 0
loop do
  num = gets.chomp.to_i
  if num < 0
    neg += 1
  elsif num > 0
    pos += 1
  end
  break if num.zero?
end

print 'Positivos: '
print '*' * pos
puts
print 'Negativos: '
print '*' * neg
puts
