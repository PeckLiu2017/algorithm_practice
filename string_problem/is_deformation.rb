def is_deformation(str1, str2)
  return false if str1 == nil || str2 == nil || str1.size != str2.size
  count1 = {}
  count2 = {}
  str1.each_char do |c|
    count1["#{c}"] = 1 unless count1.keys.include?(c)
    count1["#{c}"] += 1
  end
  str2.each_char do |c|
    count2["#{c}"] = 1 unless count2.keys.include?(c)
    count2["#{c}"] += 1
  end
  return count1 == count2
end

str1 = "aabbcc"
str2 = "aabbccs"
p is_deformation(str1, str2) # => false
str1 = "abcabcabc";
str2 = "bcacbaacb";
p is_deformation(str1, str2) # => true
