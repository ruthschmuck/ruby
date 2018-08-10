puts 'ingrese un numero'
num = gets.chomp.to_f

num = num.abs
num = num % 1

puts num
