# El indice de masa corporal es el cociente entre el peso del individuo en kilos
#  y el cuadrado de su estatura en metros.

# Escriba un programa que reciba como entrada la estatura, el peso y la edad de
# una persona, y le entregue su condicion de riesgo.

puts 'Ingrese su edad'
edad = gets.chomp.to_i
puts 'Ingrese su peso en Kg'
peso = gets.chomp.to_i
puts 'Ingrese su estatura metros'
alt = gets.chomp.to_i

imc = peso / (alt**2)

if edad < 45
  puts imc < 22 ? 'bajo' : 'medio'
else
  puts imc < 22 ? 'medio' : 'alto'
end
