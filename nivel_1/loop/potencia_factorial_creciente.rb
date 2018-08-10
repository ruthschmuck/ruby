# La potencia factorial creciente n^m, definida como:
# n^m = n(n+1)(n+2)...(n+m-1)

print 'Ingrese n: '
n = gets.chomp.to_i
print 'Ingrese m: '
m = gets.chomp.to_i

cont = 1
if m > 0
  (1..(m - 1)).each do |var|
    puts var
    cont *= (n + var)
  end
  cont *= n
end

puts cont
