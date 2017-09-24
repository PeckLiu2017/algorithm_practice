require_relative '../common/stack'
class ReverseStackUsingRecursiveAndStackOperation
  # 这个方法得到栈底元素并把它删除
  # 从reverse进入i = get_and_remove_last_element(stack)
  # 从栈顶元素开始
  # 弹出result = 3
  # 栈不为空
  # i = get_and_remove_last_element(stack)没有结束
  # 进入第一层递归
  # 执行last = get_and_remove_last_element(stack)
  # 从栈顶元素开始
  # 第一层递归的result = 2
  # 栈不为空
  # last = get_and_remove_last_element(stack)没有结束
  # 进入第二层递归
  # 执行last = get_and_remove_last_element(stack)
  # 第二层递归的result = 1
  # 栈为空
  # return result = 1
  # 第二层递归得到结果
  # last = get_and_remove_last_element(stack) = 1
  # 回到第一层递归
  # 此时result = 2
  # 执行stack.push(result)
  # stack = [2]
  # 回到i = get_and_remove_last_element(stack)
  # 此时result = 3
  # 执行stack.push(result)
  # stack = [2，3]
  # 进入reverse([2，3])
  # 同上面的步骤
  # stack = [3]
  # 同上面的步骤
  # stack = []
  def get_and_remove_last_element(stack)
    result = stack.pop
    if stack.empty?
      return result
    else
      last = get_and_remove_last_element(stack)
      stack.push(result)
      return last
    end
  end

  # 递归由第一个函数返回的栈以实现逆序
  # 一直递归，直到这个栈为空
  # 第一次得到并删除stack=[1, 2, 3]栈底的1
  # i = 1
  # 此时stack=[2, 3]
  # 但reverse([1, 2, 3])还没有结束
  # 就进入下一层reverse([2, 3])递归
  # 第二次得到并删除stack=[2, 3]栈底的2
  # i = 2
  # 此时stack=[3]
  # reverse([2，3])函数还没有结束
  # 就进入下一层reverse([3])递归
  # 第三次得到并删除stack=[3]栈底的3
  # i = 3
  # 此时stack=[]
  # 栈空了
  # 执行return if stack.empty?
  # 开始return
  # 执行stack.push(i)
  # 把3压入
  # stack=[3]
  # reverse([3])函数结束
  # 执行stack.push(i)
  # 把2压入
  # stack=[3，2]
  # reverse([2，3])函数结束
  # 执行stack.push(i)
  # 把1压入
  # 得stack=[3，2，1]
  # reverse([1，2，3])函数结束
  # 返回最终结果stack=[3，2，1]
  def reverse(stack)
    return if stack.empty?
    i = get_and_remove_last_element(stack)
    reverse(stack)
    stack.push(i)
  end
end

stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
p stack #=> #<Stack:0x007ffef2047290 @stack=[1, 2, 3]>
rs = ReverseStackUsingRecursiveAndStackOperation.new
p rs.reverse(stack) #=> [3,2,1]
