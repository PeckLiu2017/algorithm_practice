def copy_array(arr1)
  #the method map geranate new Array arr2 according to the value form arr1 and Ruby return arr2 automatically without "return" keyword
  arr2 = arr1.map{|v| v}
end

arr1 = gets.split()
puts copy_array(arr1)
