# destalles de este ejercicio
# http://progra.usm.cl/apunte/ejercicios/1/multiplicacion-rusa.html

print 'Ingrese multiplicador: '
cador = gets.chomp.to_i
print 'Ingrese multiplicando: '
cando = gets.chomp.to_i
cont = 0
loop do
  cont += cando if cador.odd?
  cador /= 2
  cando *= 2
  break if cador.zero?
end

puts cont
