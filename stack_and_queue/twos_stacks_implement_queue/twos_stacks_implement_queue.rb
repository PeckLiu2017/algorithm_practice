require_relative '../common/stack'
class TwoStacksImplementQueue
  def initialize
    @stack_push = Stack.new
    @stack_pop = Stack.new
  end

  def add(pushInt)
    @stack_push.push(pushInt)
  end

  def poll
    if @stack_push.empty? && @stack_pop.empty?
      raise 'Queue is empty!'
    elsif @stack_pop.empty?
      while !@stack_push.empty?
        @stack_pop.push @stack_push.pop
      end
    end
    p @stack_pop
    puts @stack_pop.pop
  end

  def peek
    if @stack_push.empty? && @stack_pop.empty?
      raise 'Queue is empty!'
    elsif @stack_pop.empty?
      while !@stack_push.empty?
        @stack_pop.push @stack_push.pop
      end
    end
    puts @stack_pop.peek
  end
end

queue = TwoStacksImplementQueue.new
queue.add(1)
queue.add(2)
queue.add(3)
p queue #=> [1, 2, 3]
queue.peek  #=> 1
queue.poll  #=> 1
queue.peek  #=> 2
queue.poll  #=> 2
queue.peek  #=> 3
queue.poll  #=> 3
# queue.poll  #=> 5
# queue.poll  #=> 5
