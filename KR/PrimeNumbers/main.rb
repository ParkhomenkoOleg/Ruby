a = gets
prime = []

if a > 2
  for i in 2..a
    count = 0
    for j in range(1, i+1)
      if i % j == 0
        count += 1
      end
    if count == 2
      prime += i
    end
    end
  end
end
