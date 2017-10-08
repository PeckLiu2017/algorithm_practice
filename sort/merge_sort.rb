def merge_sort
  return self if self.size <= 1
  left = self[0, self.size/2]
  right = self[self.size/2, self.size - self.size/2]
  Array.merge(left.merge_sort, right.merge_sort)
end

def self.merge(left, right)
  sorted = []
  until left.empty? or right.empty?
      sorted << (left.first <= right.first ? left.shift : right.shift)
  end
  sorted + left + right
end

arr = [5,3,8,6,4]
p arr.send(:merge_sort) #=> [3, 4, 5, 6, 8]
