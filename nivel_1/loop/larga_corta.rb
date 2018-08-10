# Desarrolle un programa que tenga la siguiente entrada:

#     primero, el usuario ingresa un numero entero n, que indica cuantas
#     palabras ingresara a continuacion;

#     despues el usuario ingresa n palabras.

# La salida del programa debe mostrar la palabra mas larga y la mas corta
# que fueron ingresadas por el usuario.

print 'Cantidad de palabras: '
n = gets.chomp.to_i

larga = ''
corta = 'PalabraGrande'
(1..n).each do |var|
  print "Palabra #{var}: "
  pala = gets.chomp

  larga = pala if pala.length > larga.length
  corta = pala if pala.length < corta.length
end

print "La palabra mas grande es: #{larga}\n"
print "la palabra mas corta es: #{corta}\n"
