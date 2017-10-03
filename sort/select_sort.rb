# 选择排序可以看成冒泡排序的优化
# 因为其目的相同
# 只是选择排序只有在确定了最小数的前提下才进行交换
# 大大减少了交换的次数
# 即空间复杂度
# 选择排序的时间复杂度为O(n^2)。
def select_sort(arr)
  return if arr == nil || arr.size == 0
  arr_size = arr.size-1
  min_index = 0
  while arr_size > 0
    for j in 0..arr_size
      # 第一次比较前先得到最小值
      # 随后每次更新前都立刻得到最小值
      for i in 0..arr_size
        if arr[i] < arr[min_index]
          # 这里只更新最小值的索引
          min_index = i
        end
      end
      # 如果找到比最小值大的值
      # 就交换它们的位置
      # 因为最大的值放在前面
      # 所以最后的结果是从大到小排序
      if arr[j] > arr[min_index]
        arr[j], arr[min_index] = arr[min_index], arr[j]
      end
    end
    arr_size -= 1
  end
  arr
end

arr = [5,3,8,6,4]
p select_sort(arr) #=> [8, 6, 5, 4, 3]
