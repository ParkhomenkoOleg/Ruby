arr = [5, 20, 3, 11, 1, 17, 3, 12, 8, 10]
swap = true
size = arr.length - 1
while swap
  swap = false
  for i in 0...size
    swap = arr[i] > arr[i + 1]
    arr[i], arr[i+1] = arr[i + 1], arr[i] if swap
  end
  size -= 1
end
puts arr.join(' ')
# output => 1 3 3 5 8 10 11 12 17 20