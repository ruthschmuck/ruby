# Un jugador debe lanzar dos dados numerados de 1 a 6, y su puntaje es la suma
# de los valores obtenidos.

# Escriba un programa que pregunte al usuario un puntaje, y muestre como
# resultado la cantidad de combinaciones de dados con las que se puede
# obtener ese puntaje.

print 'Ingrese el puntaje: '
num = gets .chomp.to_i

cont = 0
(1..6).each do |i|
  (1..6).each do |j|
    cont += 1 if i + j == num
  end
end

puts "Hay #{cont} combinaciones para #{num}"
