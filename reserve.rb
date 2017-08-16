arr = gets.split().map { |e| e.to_i }
n = arr.length
for i in 0..n/2
  temp = arr[i]
  arr[i] = arr[n-1-i]
  arr[n-1-i] = temp
  puts "arr[#{i}]换成了arr[#{n-1-i}]"
end

puts arr
