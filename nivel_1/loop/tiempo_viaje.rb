# Un viajero desea saber cuanto tiempo tomo un viaje que realizo.
# El tiene la duracion en minutos de cada uno de los tramos del viaje.

# Desarrolle un programa que permita ingresar los tiempos de viaje de los tramos
# y entregue como resultado el tiempo total de viaje en formato horas:minutos.

# El programa deja de pedir tiempos de viaje cuando se ingresa un 0.

puts 'Ingrese el tiempo de viaje en minutos. 0 para salir'

count = 0
loop do
  print 'Duración del tramo: '
  min = gets.chomp.to_i
  count += min

  break if min.zero?
end

h = count / 60
m = count % 60

puts "Tiempo total de viaje: #{h}:#{m} horas"
