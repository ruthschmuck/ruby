# Funcion para calcular el Factorial de n

def fact(num)
  raise 'No existe el factorial de numeros negativos' if num < 0
  if num.zero? || num == 1
    1
  else
    cont = 1
    (2..num).each do |var|
      cont *= var
    end
    cont
  end
end
