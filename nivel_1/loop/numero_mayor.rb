# Escriba un programa que permita determinar el numero mayor perteneciente a un
# conjunto de n numeros, donde tanto el valor de n como el de los numeros deben
# ser ingresados por el usuario

print 'Ingrese n: '
n = gets.chomp.to_i

aux = 0
(1..n).each do
  print 'Ingrese un valor: '
  val = gets.chomp.to_i
  aux = val if val > aux
end
print "El mayor valor es: #{aux} \n"
