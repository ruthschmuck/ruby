# El numero de Euler
# Desarrolle un programa que entregue un valor aproximado de e,
# calculando esta suma hasta que la diferencia entre dos sumandos
# consecutivos sea menor que 0,0001.

require './func_factorial'

band = true
e = 2
i = 2
while band
  if (1 / fact(i - 1).to_f).to_f - (1 / fact(i).to_f).to_f >= 0.0001
    e += 1 / fact(i).to_f
    i += 1
  else
    band = false
  end
end
puts e
puts i - 1
