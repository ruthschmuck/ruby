# El numero de Stirling del segundo tipo S(n,k)
require './func_factorial'

def coef_bi(nnn, kkk)
  bi = fact(nnn) / (fact(nnn - kkk) * fact(kkk))
  bi
end

print 'Ingrese el n: '
n = gets.chomp.to_i
print 'Ingrese el k: '
k = gets.chomp.to_i

cont = 0

(k + 1).times do |i|
  cont += (-1)**i * coef_bi(k, i) * (k - i)**n
  puts cont
end

snk = (1 / fact(k).to_f) * cont

puts snk
