# Desarolle un programa para estimar el valor de PI

print 'Ingrese el numero a estimar: '
num = gets.chomp.to_i

cont = 1
deno = 1.to_f
(2..num).each do |op|
  band = op.even? ? true : false
  deno += deno + 2
  if band
    cont -= 1 / deno
  else
    cont += 1 / deno
  end
end
print "n: #{num}\n"
puts 4 * cont
