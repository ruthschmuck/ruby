# coeficiente binomial

require './func_factorial'

print 'Ingrese el n: '
n = gets.chomp.to_i
print 'Ingrese el k: '
k = gets.chomp.to_i

if k <= n
  bi = fact(n) / (fact(n - k) * fact(k))
  puts bi
else
  puts "El valor k: #{k}, no puede ser mayor que el valor n: #{n}"
end
