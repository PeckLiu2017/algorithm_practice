# 注释来源：慕课网
# 作者： visor_03389873 
# 插入排序
# 插入排序是通过比较找到合适的位置插入元素来排序
# 就像打扑克牌
# 可能要整理自己手上的牌
# 牌多的时候怎么整理呢
# 就是拿到一张牌，找到一个合适的位置插入
# 对5,3,8,6,4这个无序序列进行简单插入排序
# 想一下在拿到第一张牌的时候，没必要整理
# 然后3要插到5前面，把5后移一位
# 变成3,5,8,6,4
# 然后8不用动，6插在8前面
# 8后移一位，4插在5前面
# 从5开始都向后移一位。
def insert_sort(arr)
  return if arr.nil? || arr.empty?
  len = arr.size - 1
  for i in 1..len
    current_number = arr[i]
    # p "current_number is #{current_number}"
    j = i - 1
    # p "j = #{j},原来牌的顺序是 #{arr}"
    while j >= 0 && arr[j] > current_number
      # p "j = #{j},arr[j] is #{arr[j]},current_number is #{current_number},先将牌 #{arr[j]} 换到现在 #{current_number} 的位置上"
      arr[j + 1] = arr[j]
      # p "arr[j] is #{arr[j]},arr[j + 1] is #{arr[j + 1]},arr is #{arr}"
      j -= 1
      # p "j -= 1 之后,j = #{j}"
    end
    # p "再将牌 #{current_number} 换到 #{arr[j+1]} 的位置上或留在原地"
    arr[j + 1] = current_number
    # p "arr[j + 1] is #{arr[j + 1]},arr is #{arr}"
  end
  arr
end

arr = [5,3,8,6,4]
p insert_sort(arr) #=> [3, 4, 5, 6, 8]
