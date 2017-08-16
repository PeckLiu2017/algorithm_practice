=begin
矩阵相乘(方阵)
a[][] * b[][] = c[][]
=end
arr1 = [[0,1,2],[0,1,2],[0,1,2]]
arr2 = [[0,1,2],[0,1,2],[0,1,2]]
arr3 = Array.new(3) do
  [0, 0, 0]
end

n = arr1.length
for i in 0..n-1
  for j in 0..n-1
    for k in 0..n-1
      arr3[i][j] += arr1[i][k]*arr2[j][k]
      puts "arr3[#{i}][#{j}] => arr1[#{i}][#{k}]*arr2[#{k}][#{j}]"
    end
  end
end
arr3.each do |v|
  puts v
end
