require 'set'
# 先找出一个覆盖最大的电台，找出所有需要电台覆盖的范围
# 慢慢增加电台的数量，扩大覆盖范围
# 设置一个best_station装最优电台情况
# 比较当前的方案和best_station，如果比best_station用到的电台少，就用它的值更新best_station
# 最后显示求出来的最优best_station及其覆盖范围

states_needed = ["mt", "wa", "or", "id", "nv", "ut","ca", "az"].to_set #创建一个列表，其中包含要覆盖的州，列表无重复

stations = {} # 可供选择的广播台清单
stations["kone"] = ["id", "nv", "ut"].to_set
stations["ktwo"] = ["wa", "id", "mt"].to_set
stations["kthree"] = ["or", "nv", "ca"].to_set
stations["kfour"] = ["nv", "ut"].to_set
stations["kfive"] = ["ca", "az"].to_set

final_stations = Set.new # 使用一个集合来存储最终选择的广播台

while states_needed.size != 0
  count = 0
  best_station = nil # 覆盖了最多的未覆盖州的广播台
  states_covered = Set.new # 一个集合，用来储存该广播台覆盖的已有广播台未覆盖的州，就是要新加进去的州，每次进while循环都会清空
  stations.each do |station,states_for_station|
    puts "station is #{station}"
    puts "#{station} has #{states_for_station.map{|i| i} }"
    puts "states_needed is #{states_needed.map{|i| i}}"
    puts "states_covered is #{states_covered.map{|i| i}}"
    covered = states_needed & states_for_station # 要覆盖的州和当前广播台覆盖的所有的州，一点点加进已覆盖区域，包含当前广播台覆盖的一系列best_station还未覆盖的州
    puts "covered is #{covered.map{|i| i}}"
    if covered.size > states_covered.size
      best_station = station
      states_covered = covered
    end
    puts "after comparing, covered is #{covered.map{|i| i}}"
    count += 1
    states_needed -= states_covered
    final_stations.add(best_station)
    puts "final_stations is #{final_stations.map{|i| i}.compact!}"
  end
  puts "-------------------- times :#{count} --------------------"
end
