require './func_primo'
####################### pregunta 1 ##############
def descomponer(num, esp)
  loop do
    esp << num % 10
    num /= 10
    break if num.zero?
  end
end

def componer(esp)
  i = esp.length - 1
  cont = 0
  esp.each do |var|
    cont += var * 10**i
    i -= 1
  end
  cont
end

def voltear_num(num)
  esp = []
  descomponer(num, esp)
  componer(esp)
end

def es_igual?(num, num_v)
  num == voltear_num(num_v)
end

def es_espejo?(num, num_v, ind, ind_v)
  es_igual?(num, num_v) && es_igual?(ind, ind_v)
end

def espejo_while(band, iter, ind, arr, arr_num)
  while !band && iter < ind
    if es_espejo?(arr_num[ind], arr_num[iter], ind + 1, iter + 1)
      band = true
      arr << [arr_num[ind], arr_num[iter]]
    else
      iter += 1
    end
  end
end

def espejo
  arr_num = primos_menores(20_000)
  arr = []
  (10..(arr_num.length - 1)).each do |ind|
    espejo_while(false, 10, ind, arr, arr_num)
  end
  arr
end

########################### Pregunta 2 ################
def multiplicar(esp)
  resul = 1
  esp.each { |e| resul *= e }
  resul
end

def buscar_otro(arr)
  i = 0
  band = false
  while !band && i < arr.length
    esp = []
    descomponer(arr[i], esp)
    resul = multiplicar(esp)
    (i + 1) == resul ? band = true : i += 1
  end
  band
end

def existe_otro?
  arr_num = primos_menores(20_000)
  arr_num[20] = 0
  buscar_otro(arr_num)
end

###################### Prgunta 3 #######################
def desc_int(num, bin2)
  loop do
    bin2 << num % 2
    num /= 2
    break if num.zero?
  end
end

def buscar_palindromo(arr, band, jjj)
  bin = []
  while !band && jjj < arr.length
    desc_int(arr[jjj], bin.clear)
    bin == bin.reverse ? band = true : jjj += 1
  end
  arr[jjj]
end

def int_to_bi
  arr_num = primos_menores(10_000)
  j = 0
  bin1 = []
  10.times do
    bin1 << buscar_palindromo(arr_num, false, j)
    j = arr_num.index(bin1.last) + 1
  end
  bin1
end
