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
  p "s1,left is #{left},right is #{right}"
  return if left > right
  p "s2"
  pivot_pos = get_middle(arr, left, right)
  p "s3, pivot_pos is #{pivot_pos}"
  quick_sort(arr, left, pivot_pos - 1)
  p "s4,pivot_pos + 1 is #{pivot_pos+1},right is #{right}"
  quick_sort(arr, pivot_pos + 1, right)
end

def sort(arr)
  p "s5, arr is #{arr}"
  return if arr.nil? || arr.empty?
  p "s6"
  quick_sort(arr, 0, arr.size - 1)
  arr
end

def get_middle(arr, left, right)
  p "s7, arr = #{arr},left = #{left}, right = #{right}"
  pivot_key = arr[left]
  p "s8, pivot_key is #{pivot_key}"
  pivot_pointer = left
  p "s9, pivot_pointer is #{pivot_pointer}"
  while left < right
    p "s10,left is #{left},right = #{right},arr[right] is #{arr[right]},pivot_key is #{pivot_key}"
    while left < right && arr[right] >= pivot_key
      p "arr[right] >= pivot_key,right = #{right}"
      right -= 1
    end
    p "s11,right = #{right}, arr[left] = #{arr[left]}, arr[right] is #{arr[right]}"
    arr[left] = arr[right]
    p "s12, arr = #{arr},left = #{left},arr[left] = #{arr[left]},pivot_key is #{pivot_key}"
    while left < right && arr[left] <= pivot_key
      p "arr[left] <= pivot_key,left = #{left}"
      left += 1
    end
    p "s13, arr = #{arr},left = #{left}"
    arr[right] = arr[left]
    p "s14, arr = #{arr}"
  end
  p "s15,left is #{left}"
  # 复归原位
  arr[left] = pivot_key
  p "s16,left is #{left},arr[left] is #{arr[left]}, pivot_key is #{pivot_key}"
  return left
end
arr = [5, 3, 8, 6, 4]
# arr = [57,68,59,52,72,28,96,33,24,19]
p sort(arr)
