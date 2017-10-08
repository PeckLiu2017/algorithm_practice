# 堆排序
# 堆排序是借助堆来实现的选择排序
# 如何由一个无序序列键成一个堆
# 如何在输出堆顶元素之后，
# 调整剩余元素成为一个新的堆


# 先制造一个最小堆
def make_min_heap(arr)
   (arr.length/2-1).downto(0).each do |i|
     # i 最开始的 i 是最末端节点的根节点
     # 自下而上地调用 min_heap_fixdown
     min_heap_fixdown(arr, i, arr.length)
   end
   arr
end
# 确保父节点比子节点小
def min_heap_fixdown(arr, i, n)
  p "s1---i is #{i}, n is #{n}"
  # 找 i 的左子节点
   left = 2 * i + 1
   # 确保 left 不会大于数组长度而越界
   while left < n
     p "s2---left is #{left}, n is #{n}"
     # left + 1 < n
     # 为了确保最后的右节点索引不会大于数组长度而越界
     # arr[left] > arr[left + 1]
     # 为了将子节点与父节点比较
     if left + 1 < n and arr[left] > arr[left + 1]
       p "s3---arr[left] is #{arr[left]}, arr[left + 1] is #{arr[left + 1]}"
       left += 1
     end
     p "s4---left = #{left},arr[left] is #{arr[left]}, arr[i] is #{arr[i]}"
     # 为制造小根堆
     # 将小于父节点的子节点弄到上面去
     if arr[left] < arr[i]
      arr[left], arr[i] = arr[i], arr[left]
      i = left
      p "s5---i is #{i}"
      left = 2 * i + 1
      p "s6---arr is #{arr},left is #{left}, i is #{i}"
     else
      break
     end
   end
end

# p make_min_heap([40, 10, 30, 15, 1]).inspect => [1, 10, 30, 15, 40]
# p make_min_heap([6,5,3,1,8,7,2,4]) #=> [1, 4, 2, 5, 8, 7, 3, 6]
# p make_min_heap([9,12,17,30,50,20,60,65,4,19]).inspect => [4, 9, 17, 12, 19, 20, 60, 65, 30, 50]

def heap_sort(arr)
   (arr.length - 1).downto(1).each do |i|
     p "i = #{i},arr[i] = #{arr[i]},arr[0] is #{arr[0]},arr = #{arr}"
     # 打乱顺序
     # 然后上一轮的最小值
     # 就永远回不去顶端了
     # 因为 i 值不断缩小
     # 比较的范围越来越小
     arr[i], arr[0] = arr[0], arr[i]
     p "---arr = #{arr}"
     min_heap_fixdown(arr, 0, i)
     p "===arr = #{arr}"
   end
   arr
end
#
# puts heap_sort(make_min_heap([9,12,17,30,50,20,60,65,4,19])).inspect => [65, 60, 50, 30, 20, 19, 17, 12, 9, 4]
p heap_sort(make_min_heap([6,5,3,1,8,7,2,4]))
