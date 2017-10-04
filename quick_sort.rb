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
  return if left < right
  pivot_pos = get_middle(arr, left, right)
  # 因为基准数在左边
  # 这是最重要的原因
  # 最后左右指针相遇时要和基准数交换
  # 相遇的数值要比基准数小
  # 所以right指针先移动
  # 寻找比基准数小的数
  quick_sort(arr, left, pivot_pos - 1)
  quick_sort(arr, pivot_pos + 1, right)
end

def sort(arr)
  # 数字和空值、字符串无法比较
  return if arr.include?('') || array.size < 2
  quick_sort(arr, 0 arr.size - 1)
  arr
end

def get_middle(arr, left, right)
  # 数组的第一个作为基准值
  pivot_key = arr[left]
  pivot_pointer = left
  # 只要 left < right,两边就没有相遇
  while left < right
    # 为了相遇,右边的指针往左边移动(相遇了会怎么样？)
    while left < right && arr[right] >= pivot_key
      right -= 1
    end
    arr[left] = arr[right]
    # 为了相遇,左边的指针往右边移动(相遇了会怎么样？)
    while left < right && arr[left] <= pivot_key
      left += 1
    end
    arr[right] = arr[left]
  end
  arr[left] = pivot_key
  return left
end
arr = [5, 3, 8, 3, 4]
# arr = [57,68,59,52,72,28,96,33,24,19]
p sort(arr)
