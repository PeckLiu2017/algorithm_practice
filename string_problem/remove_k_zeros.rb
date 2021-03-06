# 找出符合条件的，把它存起来，然后减掉
# 相比于找到之后直接减，不用存
# 还是后者原解法好一些
def remove_k_zeros(str, k)
  return str if str.nil? || k < 1
  char_arr = str.chars
  count = 0
  start = -1
  char_arr.each_with_index do |c, i|
    if c == '0'
      count += 1
      start = start == -1 ? i : start
    else
      if count == k
        while count != 0
          count -= 1
          char_arr[start] = nil
          start += 1
        end
      end
      count = 0
      start = -1
    end
  end

  if count >= k
    while k != 0
      k -= 1
      char_arr[start] = nil
      start += 1
    end
  end

  char_arr.delete_if {|i| i == nil }.join
end


str1 = "0A0B0C00D0";
p (remove_k_zeros(str1, 1)); #=>  A B C00D 

str2 = "00A00B0C00D0";
p (remove_k_zeros(str2, 2)); #=>    A  B0C  D0

str3 = "000A00B000C0D00";
p (remove_k_zeros(str3, 3)); #=>    A00B   C0D00

str4 = "0000A0000B00C000D0000";
p (remove_k_zeros(str4, 4)); #=>  A    B00C000D    

str5 = "00000000";
p (remove_k_zeros(str5, 5)); #=>  000
