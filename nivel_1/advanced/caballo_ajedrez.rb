# Escriba un programa que reciba como entrada las coordenadas en que se
# encuentra un caballo, y entregue como salida todas las casillas hacia las
# cuales el caballo puede desplazarse.

# Todas las coordenadas mostradas deben estar dentro del tablero.

# Si la coordenada ingresada por el usuario es invalida, el programa debe
# indicarlo.

puts 'Ingrese las coordenada del caballo.'
print 'Ingrese la Fila: '
fila = gets.chomp.to_i
print 'Ingrese la columna: '
col = gets.chomp.to_i
puts

if fila > 0 && fila < 9 && col > 0 && col < 9
  puts "#{fila - 2} #{col - 1}" if (fila - 2) > 0 && (col - 1) > 0
  puts "#{fila - 1} #{col - 2}" if (fila - 1) > 0 && (col - 2) > 0
  puts "#{fila - 2} #{col + 1}" if (fila - 2) > 0 && (col + 1) < 9
  puts "#{fila - 1} #{col + 2}" if (fila - 1) > 0 && (col + 2) < 9
  puts "#{fila + 2} #{col - 1}" if (fila + 2) < 9 && (col - 1) > 0
  puts "#{fila + 1} #{col - 2}" if (fila + 1) < 9 && (col - 2) > 0
  puts "#{fila + 2} #{col + 1}" if (fila + 2) < 9 && (col + 1) < 9
  puts "#{fila + 1} #{col + 2}" if (fila + 1) < 9 && (col + 2) < 9
else
  puts 'Posición invalida.'
end
