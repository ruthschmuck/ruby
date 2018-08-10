# son las palabras que no cambian al invertir el orden de sus letras.

print 'Ingrese la palabra o frase: '
pal = gets.chomp.delete(' ')
inver = pal.reverse

puts pal == inver ? 'Es palíndromo' : 'No es palíndromo'
