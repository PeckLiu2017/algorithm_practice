def replace(str, from, _to)
  return str if str.nil? || from.nil? || str.eql?('') || from.eql?('')
  chas = str.chars
  chaf = from.chars
  match = 0
  chas.each_with_index do |_k, i|
    if _k == chaf[match]
      match +=1
      if match == chaf.size
        clear(chas, i, chaf.length)
        match = 0
      end
    else
      if _k == chaf[0]
        i -= 1
      end
      match = 0
    end
  end
  # res 代表最终替换的累加结果
  res = "";
  # cur 代表没被换成 nil
  # 原字符串剩下部分的累加结果
  cur = "";
  # 开始进行替换
  chas.each_with_index do |_k, i|
  # 原字符串剩下的部分不为空时
    if _k != nil
      cur = cur + _k
    end
  # 当前字符为空但上一个不为空时
  # 表示新一个匹配部分
  # 比如在例五中表示两个 abc 中间的 1
    if _k == nil && (i == 0 || chas[i - 1] != nil)
      res = res + cur + _to
    # 清空 cur 以重新计算 cur
      cur = ""
    end
  end
  # 遍历完成后
  # 如果原字符串最后的 cur 不为空
  # 加到 res 中
  if !cur.eql?("")
    res = res + cur
  end
  return res
end
# 将要替换的部分全部设置为nil
def clear(chas, end_posi, len)
  while len != 0
    len -= 1
    chas[end_posi] = nil
    end_posi -= 1
  end
end
str1 = '123abc'
from1 = 'abc'
to1 = '4567'
str2 = '123abcabc'
from2 = 'abc'
to2 = 'X'
str3 = '123'
from3 = 'abc'
to3 = '456'
str4 = '123abd'
from4 = 'abc'
to4 = '456'
str5 = 'abc1abcabc1234abcabcabc5678'
from5 = 'abc'
to5 = 'XXXXX'
p replace(str1, from1, to1) #=> 1234567
p replace(str2, from2, to2) #=> 123X
p replace(str3, from3, to3) #=> 123
p replace(str4, from4, to4) #=> 123abd
p replace(str5, from5, to5) #=> XXXXX1XXXXX1234XXXXX5678

# def replace(str, from, to)
#   count = 0
#   start_posi = []
#   str.each_char.with_index do |c, i|
#     if from[0] == c
#       start_posi << i
#     end
#   end
#
#   if start_posi.size >= 1
#     i = start_posi.size
#     if i == 1
#       extract_str = str[start_posi[0],from.size]
#       if extract_str == from
#         str[start_posi[0],from.size] = to
#       end
#     else
#       while i > 1
#         extract_str = str[start_posi[i-1],from.size]
#         if start_posi[i-1] - start_posi[i-1-1] > from.size
#
#         else
#           if extract_str == from
#             str[start_posi[i-1],from.size] = ''
#           end
#         end
#         i -= 1
#       end
#       str[start_posi[0],from.size] = to
#     end
#
#   end
#   str
# end
