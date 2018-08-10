# Escriba un programa que determine si un caracter ingresado es letra, numero,
# o ninguno de los dos. En caso que sea letra,
# determine si es mayuscula o minuscula.

num = %w[0 1 2 3 4 5 6 7 8 9]
min = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
may = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
puts 'ingrese un caracter'
car = gets.chomp

if num.include? car
  puts 'es un numero'
elsif min.include? car
  puts 'Es minuscula'
elsif may.include? car
  puts 'es mayuscula'
else
  puts 'No es letra ni numero'
end
