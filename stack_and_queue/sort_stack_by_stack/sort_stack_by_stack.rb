require_relative '../common/stack'
class SortStackByStack
  def sort_stack_by_stack(stack)
    help = Stack.new

    while !stack.empty?
      cur = stack.pop
      while !help.empty? && help.peek > cur
        stack.push(help.pop)
      end
      help.push(cur)
    end

    while !help.empty?
      stack.push(help.pop)
    end
  end
end

stack = Stack.new
stack.push(3)
stack.push(8)
stack.push(6)
# stack.push(1)
# stack.push(10)
# stack.push(1)
# p stack #=> stack=[3, 8, 6, 1, 10, 1]
ss = SortStackByStack.new
p ss.sort_stack_by_stack(stack)
p stack #=> stack=[10, 8, 6, 3, 1, 1]
