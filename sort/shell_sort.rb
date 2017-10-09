def shell_sort(list)
  d = list.length
  while d > 1
    # 不断缩小 d 的范围
    # 以求每个分组的每个数都能得到比较
    d = d / 2
    # 进行多次循环
    # 将部分有序变成全部有序
   (0...list.length).each do |i|
     # 不同分组的数前后之间进行比较
    (0...list.length-d).step(d) do |j|
     if list[j] >= list[j+d]
      list[j], list[j+d] = list[j+d], list[j]
     end
    end
   end
    break if d == 1
  end
  list
end

arr1 = [5,3,8,6,4]
arr2 = [5,2,4,8,6,3]
p shell_sort(arr1) #=> [3, 4, 5, 6, 8]
p shell_sort(arr2) #=> [2, 3, 4, 5, 6, 8]
