# recorrer una matriz espiral desde dentro hacia afuera

MAX = 1001
espiral = Array.new(MAX) { Array.new(MAX, 0) }

row = MAX / 2
col = MAX / 2

k = 1
i = 1
control = 0
band = true
espiral[row][col] = i
while band
  if control.even?
    k.times do
      i += 1
      if i.eql?((MAX * MAX) + 1)
        band = false
        break
      else
        col += 1
        espiral[row][col] = i
      end
    end
    if band
      k.times do
        i += 1
        row += 1
        espiral[row][col] = i
      end
    end
  else
    k.times do
      i += 1
      col -= 1
      espiral[row][col] = i
    end
    k.times do
      i += 1
      row -= 1
      espiral[row][col] = i
    end
  end
  control += 1
  k += 1
end

def igual?(row2, iii, col2, jjj)
  row2 == iii && col2 == jjj
end

cont = 0
(0...MAX).each do |row1|
  (0...MAX).each do |col1|
    cont += espiral[row1][col1] if row1.eql? col1
  end
end

i = 0
j = MAX - 1
(0...MAX).each do |row2|
  (MAX - 1).downto(0) do |col2|
    if igual?(row2, i, col2, j)
      cont += espiral[row2][col2]
      i += 1
      j -= 1
    end
    next
  end
end

puts cont - 1
