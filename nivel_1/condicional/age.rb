# Calculate age

puts 'Ingrese fecha de nacimiento'
puts 'Dia'
dia = gets.chomp.to_i
puts 'Mes'
mes = gets.chomp.to_i
puts 'Año'
anio = gets.chomp.to_i

if mes > Time.now.month
  edad = Time.now.year - anio - 1
elsif mes == Time.now.month
  edad = dia > Time.now.day ? Time.now.year - anio - 1 : nil
else
  puts 'Aqui'
  edad = Time.now.year - anio
end

puts edad
