# determina si un numero es primo
def es_primo?(num)
  band = true
  i = 2
  while band && i < num
    band = false if (num % i).zero?
    i += 1
  end
  band
end

# imprime todos los numeros primos hasta n
# rubocop:disable MethodLength
def imprimir_primos(num)
  i = 2
  j = 2
  while i <= num + 1
    band = true
    k = 2
    while band && k < j
      band = false if (j % k).zero?
      k += 1
    end
    if band
      puts j
      i += 1
    end
    j += 1
  end
end

# retorna un array con todos los numeros primos
def primos_menores(num)
  primos = []
  (2..num).each do |var|
    primos << var if es_primo?(var)
  end
  primos
end

# rubocop:disable AbcSize
# retorna los factores primos de un numeros
def factores_primos(num)
  primos = []
  fact = [2, 3, 5, 7]
  loop do
    band = true
    i = 0
    while band && i <= 3
      band = false if (num % fact[i]).zero?
      i += 1
    end
    if band
      primos << num
      num /= num
    else
      primos << fact[i - 1]
      num /= fact[i - 1]
    end
    break if num == 1
  end
  primos
end

# Retorna un array de pares ordenados con los numeros menores a un n
# que cumpla que su suma de el n
def sumar_primos(num)
  primos = primos_menores(num)
  i = 1
  j = i
  suma = []
  while (primos[i] + primos[j]) <= num
    band = false
    while !band && j <= primos.length - 1
      if (primos[i] + primos[j]) == num
        suma << [primos[i], primos[j]]
        band = true
      end
      j += 1
    end
    i += 1
    j = i
  end
  suma
end

def primos_terminan_siete
  primos = primos_menores(10_000)
  cont = 0
  primos.each do |pri|
    cont += 1 if (pri % 10) == 7
  end
  cont
end

def suma_primos_cuadrados
  primos = primos_menores(1000)
  primos.map! { |e| e**2 }
  resul = primos.sum
  resul
end

def mult_primos_con_siete
  primos = primos_menores(100)
  cont = 1
  primos.each do |pri|
    cont *= pri if (pri % 10) == 7 || (pri / 10) == 7
  end
  cont
end
# rubocop:enable AbcSize
# rubocop:enable MethodLength
