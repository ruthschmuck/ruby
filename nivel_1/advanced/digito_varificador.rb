# Este ejercicio esta en http://progra.usm.cl/apunte/ejercicios/1/rol.html

puts 'Ingrese el rol: '
rol = gets.chomp.to_i

# Invertir numero
invert = []
div = rol
loop do
  invert << div % 10
  div /= 10
  break if div.zero?
end

# Multipicacion por los numeros de secuencia
sec = [2, 3, 4, 5, 6, 7]
suma = []
j = 0
invert.length.times do |i|
  suma << invert[i] * sec[j]
  j = j == sec.length - 1 ? 0 : j + 1
end
# Sumar el resultado de la multiplicacion
resul = suma.sum

resul %= 11
resul = 11 - resul
resul = rol - resul

puts resul
