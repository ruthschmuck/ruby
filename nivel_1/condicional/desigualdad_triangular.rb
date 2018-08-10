puts 'Ingrese lado A'
a = gets.chomp.to_f
puts 'Ingrese Lado B'
b = gets.chomp.to_f
puts 'Ingrese lado C'
c = gets.chomp.to_f

if a + b >= c && a + c >= b && b + c >= a
  puts 'Es un triangulo valido'
  if a == b && b == c
    puts 'El triángulo es equilatero'
  elsif a != b && b != c && a != c
    puts 'El triangulo es escaleno'
  else
    puts 'El triangulo es isoceles'
  end
else
  puts 'No es un triangulo valido'
end
