puts 'ingrese un año'
anio = gets.chomp.to_i

if (anio % 4).zero? && (!(anio % 100).zero? || (anio % 400).zero?)
  puts "el año #{anio} es bisiesto"
else
  puts "el año #{anio} es no es bisiesto"
end
