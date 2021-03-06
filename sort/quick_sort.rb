# 注释来源：慕课网
# 作者： visor_03389873
# 快速排序
# 其思想来自冒泡排序
# 冒泡排序是通过相邻元素的比较和交换把最小或最大的冒泡到最顶端
# 而快速排序是比较和交换小数和大数
# 这样一来不仅把小数冒泡到上面同时也把大数沉到下面
# 快速排序是不稳定的
# 两个相同的数也可能被调换位置
# 从而破坏原来数的稳定性
def quick_sort(arr, left, right)
  # 非空验证
  return if left > right
  # 递归的层次
  # left = 0, right = 4 时
  # left = 0, right = 2 时
  # left = 0, right = 1 时
  # 不断寻找基准点
  pivot_pos = get_middle(arr, left, right)
  # 基准点左边的
  quick_sort(arr, left, pivot_pos - 1)
  # 基准点右边的
  quick_sort(arr, pivot_pos + 1, right)
end

def sort(arr)
  return if arr.include?('') || array.size < 2
  quick_sort(arr, 0, arr.size - 1)
  arr
end

def get_middle(arr, left, right)
  # 数组的第一个作为基准值
  pivot_key = arr[left]
  pivot_pointer = left
  while left < right
    while left < right && arr[right] >= pivot_key
      right -= 1
    end
    # 比基准值小的记录移到低端
    arr[left] = arr[right]
    while left < right && arr[left] <= pivot_key
      left += 1
    end
    # 比基准值大的记录移到高端
    arr[right] = arr[left]
  end
  # 把基准值放到上一步移到右边的那个值的位置
  arr[left] = pivot_key
  return left
end

# 第二种解法
# def quick_sort(array)
#   return array if array.size < 2
#   left, right = array[1..-1].partition { |y| y <= array.first }
#   quick_sort(left) + [array.first] + quick_sort(right)
# end

arr = [5, 3, 8, 6, 4]
# arr = [57,68,59,52,72,28,96,33,24,19]
p sort(arr)
