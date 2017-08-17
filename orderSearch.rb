def order_search(arr,target)
  arr.each_with_index do |i,k|
    if target == i
      return k
    end
  end
end


arr = [1,2,3,4,5]
puts order_search(arr,3)
