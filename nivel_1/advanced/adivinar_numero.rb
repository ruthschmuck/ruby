# Escriba un programa que intente adivinar el numero pensado por el usuario.
# Cada vez que el computador haga un intento, el usuario debe ingresar
# <, > o =, dependiendo si el intento es menor, mayor o correcto.

def opcion(has, opc, num)
  if opc == '<'
    has[:b] = num - 1
    has[:i] += 1
  elsif opc == '>'
    has[:a] = num + 1
    has[:i] += 1
  else
    puts "Advine en #{has[:i]} intentos"
  end
end

def entrada_incorrecta?(opc)
  return true if (opc.eql? '<') || (opc.eql? '>') || (opc.eql? '=')
  puts 'Entrada incorrecta'
  false
end

def adivinar
  control = { a: 1, b: 100, i: 1 }
  loop do
    num = rand(control[:a]..control[:b])
    print "Intento #{control[:i]}: #{num}\n"
    op = gets.chomp
    next unless entrada_incorrecta?(op)
    opcion(control, op, num)
    break if op == '='
  end
end

adivinar
