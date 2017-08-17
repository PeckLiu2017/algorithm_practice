# 1.implement picture
graph = {}
graph["you"] = ["alice", "bob", "claire"]
graph["bob"] = ["anuj", "peggy"]
graph["alice"] = ["peggy"]
graph["claire"] = ["thom", "jonny"]
graph["anuj"] = []
graph["peggy"] = []
graph["thom"] = []
graph["jonny"] = []

# 2.judge whether a person is seller ,assume that a people is a seller if his or her name ends with "m"
def person_is_seller(name)
    # puts "start judge #{name} "
    name[-1] == 'm'
end

# 3.create a queue to store people who are going to be searched
search_queue = []
# 4.store person has been searched
searched = []
search_queue << graph["you"]
search_queue.flatten!
# puts "at first ,search_queue is #{search_queue}"

while search_queue
  # when all person has been searched and nobody has been found ,tell me this result
  if search_queue.size == 0
    puts 'nobody has been found,terminal searching..'
    break
  end
  # puts "start searching...,searched person is #{searched}"
    person = search_queue.shift
    # puts "now the person is being searched is #{person}"
    if !searched.include?(person)
      if person_is_seller(person)
        # puts "-----------------------------------------------------"
        puts "wow!!!!!!found!!!!!!!#{person} is a mango seller !"
        # puts "-----------------------------------------------------"
        # puts "break.."
        break
      else
        # puts "#{person} is not! a mango seller ,look up the rest person to be searched!"
        # puts "the rest person to be searched are #{search_queue.to_s}"
        # puts "before add #{person}'s friends #{graph[person]} to search_queue, the search_queue is #{search_queue}!"
        search_queue << graph[person]
        # puts "after add #{graph[person]} to search_queue, the search_queue is #{search_queue}!"
        search_queue.flatten!
        # puts "remove blank in array if it exits, now the search_queue is #{search_queue}"
        search_queue.compact! if search_queue.size > 1
        searched << person
        # puts "#{person} has been searched! searched person are #{searched.to_s}"
      end
    end
end
