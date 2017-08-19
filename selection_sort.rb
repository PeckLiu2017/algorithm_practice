def findSmallest(arr)
  smallest = arr[0]
  smallest_index = 0
  arr.each_with_index do |k,v|
    if k < smallest
      smallest = k
      smallest_index = v
    end
  end
  return smallest_index
end

def selection_sort(arr)
  sorted_array = []
  for i in 0..arr.size-1
    smallest = findSmallest(arr)
    puts "smallest #{arr[smallest]} is to be added to sorted_array"
    sorted_array << arr.slice!(smallest)
    puts "now arr is #{arr}"
    puts "one circle is ended!"
  end
  return sorted_array
end

arr = [5, 3, 6, 2, 10]
puts selection_sort(arr).to_s #=>[2, 3, 5, 6, 10]
