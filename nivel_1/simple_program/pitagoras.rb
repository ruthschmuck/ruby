puts 'ingrese cateto a:'
a = gets.chomp.to_f
puts 'ingrese cateto b:'
b = gets.chomp.to_f

c = Math.sqrt(a**2 + b**2)

puts "la hipotenusa es: #{c}"
