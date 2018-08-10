# http://progra.usm.cl/apunte/ejercicios/1/suma-naturales.html

print 'Ingrese un número: '
num = gets.chomp.to_i

s1 = 0
(1..num).each { |n| s1 += n }

s2 = (num * (num + 1)) / 2

puts s1
puts s2

puts s1 == s2 ? 'Son iguales' : 'Son diferentes'
