def bubble_sort(arr)
  len = 1
  while len < arr.length
    (0...arr.length-len).to_a.each do |i|
      if arr[i] > arr[i+1]
        arr[i],arr[i+1] = arr[i+1],arr[i]
      end
    end
    len += 1
  end
  arr
end

arr = [5,3,1,6,8,7,2,4]
puts bubble_sort(arr).to_s
