# Desarrolle un programa que calcule la media armonica de una secuencia
# de numeros.

# El programa primero debe preguntar al usuario cuantos numeros ingresara.
# A continuacion, pedira al usuario que ingrese cada uno de los n
# numeros reales. Finalmente, el programa mostrara el resultado.

# http://progra.usm.cl/apunte/ejercicios/1/media-armonica.html

print 'Cuántos números: '
n = gets.chomp.to_i

arr = []
n.times do
  print 'n1 = '
  num = gets.chomp.to_f
  arr << 1 / num
end
resul = arr.sum
resul = n / resul

puts "H = #{resul}"
