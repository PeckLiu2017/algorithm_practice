class Node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end
end

class LinkedList

  def initialize
    @head = Node.new
  end

  def add(value)
    current = @head
    while !current.next_node.nil? # 当下一个节点不为空
      current = current.next_node
    end
    current.next_node = Node.new
  end
end

ll = LinkedList.new
ll.add(10)
ll.add(20)
p ll
