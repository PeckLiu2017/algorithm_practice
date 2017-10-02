def get_count_string(str)
  return '' if str.nil? || str.eql?('')
  chs = str.chars
  res = chs[0]
  p "s1"
  p "res is #{res}"
  num = 1
  for i in 1..chs.size-1
  # chs.each_with_index do |chs[i], i|
    p "s2"
    p "chs[i] is #{chs[i]}"
    if chs[i] != chs[i - 1]
      p "s3"
      p "num is #{num}"
      res = concat(res, num.to_s, chs[i])
      num = 1
    else
      p "s4"
      num += 1
      p "num is #{num}"
    end
  end
  return concat(res, num.to_s, '')
end

def concat(s1, s2, s3)
  p s1
  p s2
  p s3
  s1 + '_' + s2 + (s3.eql?('') ? s3 : '_' + s3)
end


str = 'aaabbadddffc'
res = get_count_string(str)
p res
# p getCharAt(res, 9)
