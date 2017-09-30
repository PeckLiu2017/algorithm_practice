def num_sum(str)
  return 0 if str.nil?
  res = 0 # 表示目前的累加和
  num = 0 # 表示当前收集到的数字
  posi = true # 表示将要加入的 num 的正负号
  cur = 0;

  char_arr = str.chars
  char_arr.each_with_index do |c, i|
    # 用ASCII码判断 cur 的取值范围
    # 这里希望是为 0-9
    cur = c.bytes.join('').to_i - '0'.bytes.join('').to_i
    # 如果 cur 不是 0-9 之间的整数
    if cur < 0 || cur > 9
      # 当前 c 不是数字时
      # 加上前一个收集到的 num
      res += num
      # 当出现的数字不连续
      # 因为 num = num * 10 + (posi ? cur : -cur)
      # 这里将 num 清零以接收下一个 num
      num = 0
      posi = if c == '-'
          # 如果 c == '-' 且前面有字符也为 '-'
          # 则改变 posi 的值变为!posi
          # 否则根据题目要求直接设为 false
               if i - 1 > -1 && char_arr[i-1] == '-'
                 !posi
               else
                 false
               end
             else
               # 如果 c != '-'
               # 也不是数字
               # 无论 c 是什么
               # 使 posi 为 true
               true
             end
    else
      # 当 cur 为数字时 num 这样处理
      num = num * 10 + (posi ? cur : -cur)
    end
  end
  # 前面 res += num
  # 加的是前一个收集到的 num
  # 为防止漏加最后出现的 num
  res += num
  res
end

str = 'A-1CD2E33'
p num_sum(str)
str = 'A-1B--2C--D6E'
p num_sum(str)
str = "1K-100ABC500D-T--100F200G!!100H---300"
p num_sum(str)
