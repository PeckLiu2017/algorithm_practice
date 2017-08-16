def compute_max(arr)
  max = arr[0]
  arr.each_with_index do |v,i|
    if arr[i] > max
      max = arr[i]
    end
  end
  return max
end

# read input form command line
input = gets
# turn input into Arrays
arr = input.split()
# invoke method compute_max
puts compute_max(arr)
