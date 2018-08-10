# Escriba un programa que simule una calculadora basica,
# este puede realizar operacion de suma, resta, multiplicacion y division.

puts 'Ingrese un número'
a = gets.chomp.to_i
puts 'Ingrese el operador'
op = gets.chomp
puts 'Ingrese otro  numero'
b = gets.chomp.to_i

if op == '+'
  resul = a + b
elsif op == '-'
  resul = a - b
elsif op == '*'
  resul = a * b
elsif op == '/'
  resul = !b.zero? ? a / b : 'No se puede la division por cero'
else
  puts 'operador invalido'
  resul = nil
end

puts "#{a} #{op} #{b} = #{resul}"
