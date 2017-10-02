def get_count_string(str)
  return '' if str.nil? || str.eql?('')
  chs = str.chars
  res = chs[0]
  num = 1
  # 从索引为1的字符开始
  for i in 1..chs.size-1
    # 如果前后两个字母不连续
    if chs[i] != chs[i - 1]
      # 就开始拼接字符串
      res = concat(res, num.to_s, chs[i])
      num = 1
    else
      num += 1
    end
  end
  return concat(res, num.to_s, '')
end

def concat(s1, s2, s3)
  s1 + '_' + s2 + (s3.eql?('') ? s3 : '_' + s3)
end

def get_char_at(str, index)
  return 0 if str.nil? || str.eql?('')
  chs = str.chars
  stage = true
  cur = 0
  num = 0
  sum = 0
  chs.each_with_index do |v, i|
    if v == '_'
      stage = !stage
    elsif stage
      # 记录数字 sum 和字母 cur 组成的区域
      sum += num
      # 判断字母区域是否在范围内
      # 如果在
      # 从上一个 cur 区域中求值
      if sum > index
        return cur
      end
      num = 0
      cur = v
    else
      # 记录数字
      num = num * 10 + v.to_i - 0
    end
  end
  sum + num > index ? cur : 0;
end

str1 = 'aaabbadddffc'
res = get_count_string(str1)
p res
p get_char_at(res, 3)
