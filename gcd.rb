=begin
自然语言描述
计算两个非负整数 p 和 q 的最大公约数:若 q 是 0，则最大公约数为 p。否则，将 p 除以 q得到余数r，p和q的最大公约数即为q和 r 的最大公约数。
=end

def greatest_common_divisor(p,q)
  if q == 0
    return p
  end
  r = (p % q).to_i
  return greatest_common_divisor(q,r)
end

puts greatest_common_divisor(ARGV[0].to_i,ARGV[1].to_i)
