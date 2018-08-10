PI = 3.14
puts 'Ingrese el radio'
r = gets.chomp.to_f

puts "Perimetro: #{2 * PI * r}"
puts "Area: #{PI * r**2}"

# pregunta: Como soluciono la ofensa
# Style/FormatString: Favor format over String#%.
# de rubocop, cuando tengo algo
# como '%0.2f' % variable, donde la variable es de tipo numerico?
