def bubble_sort(arr)
  return if arr == nil || arr.size == 0
  arr_size = arr.size-1
  while arr_size > 0
    for i in 1..arr_size
      # 从索引为1的位置开始比较
      # 如果后一个比前一个小
      # 就交换位置
      if arr[i] < arr[i-1]
        arr[i], arr[i-1] = arr[i-1], arr[i]
      end
    end
    # 每一轮循环都比较 n-1 次
    # 所以循环结束要减一
    arr_size -=1
  end
  arr
end

arr = [5,3,8,6,4]
# arr = [5,3,1,6,8,7,2,4]
puts bubble_sort(arr).to_s
