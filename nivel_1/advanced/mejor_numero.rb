# El enunciado a este ejercicio se encuentra en
# http://progra.usm.cl/apunte/ejercicios/1/el-mejor-numero.html

require './func_mejor_numero'

puts 'Ingrese la opción 1 para responder la primera pregunta'
puts 'Ingrese la opción 2 para responder la segunda pregunta'
puts 'Ingrese la opción 3 para responder la tercera pregunta'
op = gets.chomp.to_i

case op
when 1
  puts espejo.length == 1 ? 'Solo existe el 73 y el 37' : 'Existen otros'
when 2
  puts existe_otro? ? 'Si, existen otros' : 'No, no existen otros'
when 3
  puts int_to_bi.inspect
end
