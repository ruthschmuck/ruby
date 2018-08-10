# Escriba un programa que pida al usuario dos palabras,
# y que indique cual de ellas es la mas larga y por cuantas letras lo es.

puts 'ingrese una palabra'
pri = gets.chomp
puts 'ingrese otra palabra'
seg = gets.chomp

if pri.length > seg.length
  puts "La palabra #{pri} tiene #{pri.length - seg.length} que #{seg}"
elsif pri.length < seg.length
  puts "La palabra #{seg} tiene #{seg.length - pri.length} que #{pri}"
else
  puts 'Las dos palabras tienen el mismo largo'
end
