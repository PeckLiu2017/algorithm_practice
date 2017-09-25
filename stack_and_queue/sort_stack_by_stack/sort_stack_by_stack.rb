require_relative '../common/stack'
class SortStackByStack
  def sort_stack_by_stack(stack)
    help = Stack.new

    while !stack.empty?
      p "step1"
      cur = stack.pop
      p "step2"
      p stack
      puts "help.peek = #{help.peek},cur = #{cur}"
      while !help.empty? && help.peek > cur
        p "step3"
        p "help"
        p help
        stack.push(help.pop)
        p "step4"
        p stack
        p "help.pop"
        p help
      end
      p "step5"
      puts "cur=#{cur}"
      help.push(cur)
      # p stack
      p "help"
      p help
    end

    while !help.empty?
      puts "step6"
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
