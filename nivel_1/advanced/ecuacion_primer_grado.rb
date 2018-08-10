# Escriba un programa que pida los coeficientes de una ecuacion de primer grado:

#     ax + b = 0,

# y que entregue la solucion.

# Una ecuacion de primer grado puede:

#     1.- tener solucion unica,
#     2.- tener infinitas soluciones, o
#     3.- no tener soluciones.

print 'Ingrese a: '
a = gets.chomp.to_f
print 'Ingrese b: '
b = gets.chomp.to_f
puts

if a.zero?
  puts b.zero? ? 'Infinitas solucuiones' : 'Sin solución'
else
  sol = -b / a
  puts "única solución: #{sol}"
end
