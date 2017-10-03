# 注释来源：慕课网
# 作者： visor_03389873
# 选择排序可以看成冒泡排序的优化
# 因为其目的相同
# 只是选择排序只有在确定了最小数的前提下才进行交换
# 大大减少了交换的次数
# 也不用对数组头尾的索引特别考虑
# 即空间复杂度
# 选择排序的时间复杂度为O(n^2)
# 尝试过用块来解决循环
# 但块中的交换位置不成功
def select_sort1(arr)
  return if arr == nil || arr.size == 0
  arr_size = arr.size-1
  min_index = 0
  while arr_size > 0
    for j in 0..arr_size
      # 第一次比较前先得到最小值
      # 随后每次循环比较前都立刻得到最小值
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

def select_sort2(arr)
  return if arr == nil || arr.size == 0
  arr_size = arr.size-1
  max_index = 0
  while arr_size > 0
    for i in 0..arr_size
      # 第一次比较前先得到最小值
      # 随后每次循环比较前都立刻得到最大值
      for j in 0..arr_size
        if arr[j] > arr[max_index]
          # 这里只更新最大值的索引
          max_index = j
        end
      end
      # 如果找到比最大值小的值
      # 就交换它们的位置
      # 因为最大的值放在后面
      # 所以最后的结果是从小到大排序
      if arr[i] < arr[max_index]
        arr[i], arr[max_index] = arr[max_index], arr[i]
      end
    end
    arr_size -= 1
  end
  arr
end

arr = [5,3,8,6,4]
p select_sort1(arr) #=> [8, 6, 5, 4, 3]
p select_sort2(arr) #=> [3, 4, 5, 6, 8]

# def select_sort2(arr)
#   return if arr == nil || arr.size == 0
#   arr_size = arr.size-1
#   max_index = 0
#   max = arr[max_index]
#   while arr_size > 0
#     for i in 0..arr_size
#       p "------arr[i] is #{arr[i]},arr[max_index] is #{arr[max_index]},arr is #{arr}"
#       # 第一次比较前先得到最小值
#       # 随后每一轮新的比较前都立刻得到最大值
#       arr.each_with_index do |k, j|
#         p "k is #{k},max is #{arr[max_index]}"
#         if k > max
#           # 这里只更新最大值的索引
#           max = k
#           max_index = j
#           p "max_index is #{max_index},k is #{k}"
#         end
#         p "-k is #{k},max is #{arr[max_index]}"
#       end
#       # 如果找到比最小值大的值
#       # 就交换它们的位置
#       # 因为最大的值放在前面
#       # 所以最后的结果是从大到小排序
#       if arr[i] < arr[max_index]
#         p "--arr[i] is #{arr[i]},arr[max_index] is #{arr[max_index]},arr is #{arr}"
#
#         t = arr[i]
#         p "t is #{t},arr is #{arr}"
#         arr[i] = arr[max_index]
#         p "arr[i] is #{arr[i]},arr is #{arr}"
#         arr[max_index] = t
#         p "arr[max_index] is #{arr[max_index]},arr is #{arr}"
#         # arr[i], arr[max_index] = arr[max_index], arr[i]
#         p "---arr[i] is #{arr[i]},arr[max_index] is #{arr[max_index]},arr is #{arr}"
#         # p "i is #{i},arr[i] is #{arr[i]}"
#         # p "max_index is #{max_index}"
#         # i, max_index = max_index, i
#         # p "-i is #{i},arr[i] is #{arr[i]}"
#         # p "---arr[i] is #{arr[i]},arr[max_index] is #{arr[max_index]},arr is #{arr}"
#       end
#     end
#     arr_size -= 1
#   end
#   arr
# end
