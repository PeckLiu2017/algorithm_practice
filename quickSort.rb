def quick_sort(array)
  return array if array.size < 2
  left, right = array[1..-1].partition { |y| y <= array.first }
  quick_sort(left) + [array.first] + quick_sort(right)
end

arr = [10,5,2,3]
puts quick_sort(arr).to_s #=>[2, 3, 5, 10]
