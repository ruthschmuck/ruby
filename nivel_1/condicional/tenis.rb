# Un partido de tenis se divide en sets. Para ganar un set, un jugador debe
# ganar 6 juegos, pero ademas debe haber ganado por lo menos dos juegos mas
# que su rival. Si el set esta empatado a 5 juegos, el ganador es el primero
# que llegue a 7. Si el set esta empatado a 6 juegos, el set se define en un
# ultimo juego, en cuyo caso el resultado final es 7-6.

puts 'Resultado de A'
a = gets.chomp.to_i
puts 'Resultado de B'
b = gets.chomp.to_i

# verifica la igualdad de resultados en los limitas y
# si el jugador A tiene 6 y el B 5 y si A 5 y B 6
if (a == 5 && b == 5) || (a == 6 && b == 6) || (a == 6 && b == 5) ||
   (a == 5 && b == 6)
  puts ' El juego no termina, gana el primero que llegue a 7'

# Verifica si el aun no nadie ha ganado y que ninguno sea 7
elsif (a < 5 || b < 5) && (a - b) > 3
  puts 'El juego continua'

# verifica quien es el ganador
elsif (a == 6 && (a - b) >= 2) || (a == 7 && (a - b) < 3)
  puts 'el ganador es A'
elsif (b == 6 && (b - a) >= 2) || (b == 7 && (b - a) < 3)
  puts 'El ganador es B'
else
  puts 'Resultado Inválido'
end
