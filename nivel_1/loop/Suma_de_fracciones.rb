# Desarrolle un programa que permita trabajar con las potencias fraccionales de
# dos, en forma decimal:
print 'Potencia'
print ' ' * 15
print 'Fraccion'
print ' ' * 20
print 'Suma'
puts
cont = 0
pot = 1
num = 0.5
while num >= 0.000001
  cont += num
  print pot
  print ' ' * 15
  print num
  print ' ' * 20
  print cont
  puts
  num **= 2
  pot += 1
end
