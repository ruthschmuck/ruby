def fibb(num)
  return 0 if num.zero?
  return 1 if num.eql? 1
  fi = [0, 1]
  (1...num).each do
    fi << fi[-1] + fi[-2]
  end
  fi
end

def primer
  print 'Ingrese n: '
  num = gets.chomp.to_i
  puts "F#{num} #{fibb(num).last}"
end

def segundo
  f = fibb(1000)
  print 'ingrese un número: '
  num = gets.chomp.to_i
  puts f.include?(num) ? "#{num} es Fibonacci" : "#{num} no es Fibonacci"
end

def tercer
  print 'Ingrese m: '
  num = gets.chomp.to_i
  puts "Los #{num} primeros numeros de Fibonacci son: "
  f = fibb(1000)
  num.times { |n| print "#{f[n]} " }
  puts
end
