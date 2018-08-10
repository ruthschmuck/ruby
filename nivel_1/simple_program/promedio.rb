puts 'Primera nota:'
pri = gets.chomp.to_f
puts 'Segunda nota:'
seg = gets.chomp.to_f
puts 'Tecera nota:'
ter = gets.chomp.to_f
puts 'cuarta nota:'
cua = gets.chomp.to_f

pro = (pri + seg + ter + cua) / 4

puts "Resultado: #{pro}"
