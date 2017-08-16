def binarySearch(arr,target)
  low = 0
  high = arr.size - 1
  # guess = arr[mid]
  while low <= high
    mid = (low + high)/2 # put this line inside while .. end block
    if arr[mid] > target
      high = mid - 1
    elsif arr[mid] == target
      return mid
    elsif arr[mid] < target
      low = mid + 1
    end
  end
  return "this target can't be found"
end

arr = [1,2,3,4,5]
puts binarySearch(arr,2) #=>1
puts binarySearch(arr,3) #=>2
puts binarySearch(arr,6) #=>this target can't be found
