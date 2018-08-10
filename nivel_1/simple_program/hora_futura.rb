puts 'Ingrese la hora del reloj'
t = gets.chomp.to_i
puts 'Ingrese cantida de horas'
h = gets.chomp.to_i

resul = (t + h) % 24

puts "En 43 horas, el reloj marcara las: #{resul}"
