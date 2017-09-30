def convert(str)
  return 0 if str.nil? || str.eql?('')
  posi = true
  convert_str = ''
  str.each_char do |c|
    cur = c.bytes.join('').to_i - '0'.bytes.join('').to_i
    # p "cur is #{cur}"
    if cur < 0 || cur > 9
      if c == '-'
        posi = false
      else
        return 0
      end
    else
      convert_str += c
      return 0 if convert_str.to_i > 2147483647 || convert_str.to_i < -2147483648
    end
  end
  # p "convert_str is #{convert_str}"
  return 0 if convert_str[0] == '0'
  posi ? convert_str.to_i : -convert_str.to_i
end

str1 = 'A13'
str2 = '123'
str3 = '-123'
str4 = '023'
str5 = '-'
str6 = ''
str7 = "2147483648";
str8 = "-2147483649";
p convert(str1) #=> 0
p convert(str2) #=> 123
p convert(str3) #=> -123
p convert(str4) #=> 0
p convert(str5) #=> 0
p convert(str6) #=> 0
p convert(str7) #=> 0
p convert(str8) #=> 0
