# 题目要求：设计一个有 getMin（求最小值）功能的栈
require_relative '../common/stack'
class MyStack1
  # @stackData用来存储所有压入的值
  # 同时
  # 如果@stackMin为空
  # 就压入跟@stackData一样的第一个值到栈顶
  # 否则，将压入@stackData的值与栈顶的值比较
  # 如果小于等于原来栈顶的值就压入，反之相反。
  # 所以这个@stackMin的值从栈顶到栈底逐步变小
  # 每次压入弹出的都是它的最小值
  def initialize
    @stackData = Stack.new
    @stackMin = Stack.new
  end

  # 如果@stackMin为空
  # 就把新数压入@stackMin之中
  # 如果@stackMin不为空
  # 但newNum小于@stackMin栈顶的值
  # 就把newNum作为最小值放在@stackMin栈顶
  # 同时把值压入@stackData栈顶
  def push(newNum)
    if @stackMin.empty?
      @stackMin.push(newNum)
    elsif newNum <= self.get_min
      @stackMin.push(newNum)
    end
    @stackData.push(newNum)
  end

  # 如果@stackMin为空
  # 表示最小的值都没有
  # 所以@stackData也为空
  # 没有数据可以弹出
  # 就抛出异常
  # 否则记录@stackData中弹出的数字
  # 如果@stackData中弹出的数字等于当前栈MyStack1实例的最小值也就是@stackMin栈顶的值
  # 就同时弹出@stackMin栈顶的值
  # 最后返回被从@stackData中弹出的值
  def pop
    if @stackMin.empty?
      raise 'Your stack is empty'
    end
    value = @stackData.pop
    if value == self.get_min
      @stackMin.pop
    end
    value
  end

  # 如果@stackMin为空
  # 表示最小的值都没有
  # 所以@stackData也为空
  # 没有数据可以弹出
  # 就抛出异常
  # 否则返回它的位于栈顶的最小值
  def get_min
    if @stackMin.empty?
      raise 'Your stack is empty'
    end
    @stackMin.peek
  end
end

stack1 = MyStack1.new
stack1.push(3);  # 先把3加入栈中
puts stack1.get_min # 得到最小值应该是3
stack1.push(4); # 再把4加入栈中
puts stack1.get_min # 3 < 4,得到最小值还应该是3
stack1.push(1); # 再把1加入栈中
puts stack1.get_min # 1 < 3,得到最小值应该是1
puts stack1.pop # 将栈顶的1弹出
puts stack1.get_min # 剩下的最小值应该是3
