# use lambda for methods "find_lowest_cost_node" use shared varaiable "processed" 用lambda创建共享变量使processed等突破def作用域门
lambda{
  graph = {}
  graph["start"] = {}
  graph["start"]["a"] = 6
  graph["start"]["b"] = 2

  graph["a"] = {}
  graph["a"]["fin"] = 1
  graph["b"] = {}
  graph["b"]["a"] = 3
  graph["b"]["fin"] = 5

  graph["fin"] = {} # 终点没有任何邻居 fin is short for finally

  infinity = 1.0/0 # at first , i don't konw the route , so assume its length is infinity

  costs = {}
  costs["a"] = 6
  costs["b"] = 2
  costs["fin"] = infinity # at first , i don't konw the route , so assume its length is infinity

  parents = {}
  parents["a"] = "start"
  parents["b"] = "start"
  parents["fin"] = nil

  processed = []

  define_method :find_lowest_cost_node do
    lowest_cost = 1.0/0 # 1.0/0表示无穷大
    lowest_cost_node = nil
    costs.each do |node,costs| # 遍历所有的节点 costs["a"] = 6   costs["b"] = 2
      cost = costs
      if cost < lowest_cost && !processed.include?(node)  # 如果当前节点的开销更低且未处理过
          lowest_cost = cost # 就将其视为开销最低的节点
          lowest_cost_node = node
      end
    end
    return lowest_cost_node
  end

  node = find_lowest_cost_node # 在未处理的节点中找出开销最小的节点
  while node != nil # 这个while循环在所有节点都被处理过后结束
    cost = costs[node] # 每个节点的花销
    neighbors = graph[node] # 查出它们相邻节点的花销
    neighbors.keys.each do |n| # n = a , fin
      puts "n is #{n},neighbors[#{n}] is #{neighbors[n]}"
      new_cost = cost + neighbors[n]
      puts "new_cost is #{new_cost}"
      if costs[n] > new_cost # 如果经当前节点前往该邻居更近，
         costs[n] = new_cost # 就更新该邻居的开销
         puts "costs[#{n}] is #{new_cost}"
         parents[n] = node # 同时将该邻居的父节点设置为当前节点
         puts "parents[#{n}] is #{parents[n]}"
      end
    end
    processed << node # 将当前节点标记为处理过
    puts "processed is #{processed}"
    node = find_lowest_cost_node # 找出接下来要处理的节点，并循环
  end

  puts parents # this hash shows the finally routes => "start => b , b => a, a => fin"

}.call
