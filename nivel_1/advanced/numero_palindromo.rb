# Un numero natural es un palindromo si se lee igual de izquierda a derecha y
#  de derecha a izquierda.

# Escriba un programa que indique si el numero ingresado es o no palindromo:

print 'Ingrese un número: '
num = gets.chomp.to_i

## Se voltea el numero
div = num
arr = []
loop do
  arr << div % 10
  div /= 10
  break if div.zero?
end

## convierto en la misma cantidad de digitos que el original
puts arr
cont = 0
j = 0
(arr.length - 1).downto(0) do |i|
  cont += arr[j] * 10**i
  j += 1
end

puts num == cont ? "#{num} Es palíndromos" : "#{num} No es palíndromo"
