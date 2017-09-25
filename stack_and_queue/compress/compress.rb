def compress(string)
  count = {}
  string.each_char do |c|
    if !count.keys.include?("#{c}")
      count.keys << c
      count["#{c}"] = 1
    else
      count["#{c}"] += 1
    end
  end

  output = ""
  count.each do |k, v|
    output += k + v.to_s
  end
  output

end

puts compress("aabbccccdef")  #=> a2b2c4d1e1f1
