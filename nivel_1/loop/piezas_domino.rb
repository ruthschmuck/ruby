# Desarrolle un programa que permita determinar la cantidad total de puntos
# que contiene un juego de domino de 28 piezas.

# Ademas, recuerde que en el domino cada lado de una pieza toma valores entre
#  0 y 6 y que, por ejemplo, la pieza cuyos lados toman valores 1 y 4 es la
#  misma que la pieza con valores 4 y 1.

cont = 0
7.times do |var|
  var2 = var
  while var2 <= 6
    print "#{var}:#{var2} "
    cont += var + var2
    var2 += 1
  end
  puts
end

puts cont
