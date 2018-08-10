# La secuencia de Collatz de un numero entero se construye de la siguiente
# forma:

#     si el numero es par, se lo divide por dos;
#     si es impar, se le multiplica tres y se le suma uno;
#     la sucesion termina al llegar a uno.

num = gets.chomp.to_i
print "n: #{num}\n"
loop do
  print "#{num} "
  num = num.even? ? num / 2 : num * 3 + 1
  break if num <= 1
end
print 1
puts
