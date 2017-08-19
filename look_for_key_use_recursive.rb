# look for key from box
# there are boxes inside the previous box
# use recursive to find key util get it or all boxes has been searched

def look_for_key(box)
  box.each do |item|
    if item == "key"
      puts "======key is found======"
      return
      # if replace return "======key is found======" with return and delete puts "======key is found======"
      # invoke the method "look_for_key(box)" will output nothing
      # for "======key is found======" is only return to its previous level
    end
    look_for_key(item) if item.is_a? Array
  end
end

# first you should get a box and know what the key looks like
# if find a String "key , goal reached "
box = []
a = ["look", "for", "answer", "from", "box"]
b = ["there", "are", "boxes", "inside", "the", "previous", "box"]
c = ["use", "recursive", "to", "find", "answer", "util", "get", "it", "or", "all", "boxes", "has", "been", "searched"]
d = ["first", "you", "should", "get", "a", "box"]
e = ["know", "what", "the", "answer", "looks", "like"]
f = ["now", "found", "the", "key", "!"]
a << c
a << d
d << e
e << f
box << a
box << b

# invoke the method
look_for_key(box)
