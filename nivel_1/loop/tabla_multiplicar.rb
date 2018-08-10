# tabla de multiplicar

10.times do |x|
  10.times do |y|
    printf '%3i', (x + 1) * (y + 1)
  end
  puts
end
