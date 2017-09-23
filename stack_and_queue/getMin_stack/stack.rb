class Stack
  def initialize
    @stack = []
  end

  def push(value)
    @stack << value
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def empty?
    @stack.empty?
  end
end
