# 冒泡排序
# 大体思想就是通过与相邻元素的比较和交换来把小的数交换到最前面
# 这个过程类似于水泡向上升一样，因此得名

# 从小到大的顺序
def bubble_sort1(arr)
  return if arr.nil? || arr.empty?
  arr_size = arr.size - 1
  while arr_size > 0
    for i in 1..arr_size
      # 从索引为1的位置开始比较
      # 如果后一个比前一个小
      # 就交换位置
      arr[i], arr[i - 1] = arr[i - 1], arr[i] if arr[i] < arr[i - 1]
    end
    # 每一轮循环都比较 n-1 次
    # 所以循环结束要减一
    arr_size -= 1
  end
  arr
end

# 从大到小的顺序
def bubble_sort2(arr)
  return if arr.nil? || arr.empty?
  arr_size = arr.size - 1
  while arr_size > 0
    # 从索引为0的位置比较
    # 最后一个数后面没有数
    # 为防止 arr[i + 1] 为空
    for i in 0..arr_size-1
      # 从索引为0的位置开始比较
      # 如果前一个比后一个小
      # 就交换位置
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] < arr[i + 1]
    end
    # 每一轮循环都比较 n-1 次
    # 所以循环结束要减一
    arr_size -= 1
  end
  arr
end

arr = [5, 3, 8, 6, 4]
puts bubble_sort1(arr).to_s #=> [3, 4, 5, 6, 8]
puts bubble_sort2(arr).to_s #=> [8, 6, 5, 4, 3]
