# Escriba un programa que determine la cantidad de digitos en un numero entero
# ingresado por el usuario:

print 'Ingrese el número: '
num = gets.chomp.to_i

cont = 0
div = num
loop do
  div /= 10
  cont += 1
  break if div.zero?
end
puts "#{num} tiene #{cont} dígitos"
