Note1 Fundamentals

1. Ruby会出现数据溢出吗？
   Ruby会自动将整数转换成一个大的整数类，这有效地防止了数据溢出。
   比如，求-2147483648的绝对值：
```
    # 在Java中   
    # Math.abs(-2147483648) => -2147483648
    # 在ruby中    
    (-2147483648).abs #=> 2147483648
```
1. Ruby中如何表示无穷大？
```
    1.0/0
    => Infinity
```
	但是1/0会得到错误，
```
    1/0
    ZeroDivisionError: divided by 0
```
1. 能有大于">"小于"<"来比较string变量吗？
   在Ruby中是可以的，Java中不行。
```
    'a' > 'b'
     => false
     'b' > 'a'
     => true
```
1. 练习1
```
     ( 0 + 15 )/2
     => 7
     ( 0 - 15 )/2
     => -8
     true && false || true && true
     => true
```
1. 练习2
```
     ( 1 + 2.236 )/2
     => 1.618
     1 + 2 + 3 + 4.0
     => 10.0
     4.1 >= 4
     => true
     1 + 2 + '3'
    TypeError: String can't be coerced into Fixnum
```
1. 编写一个程序，比较三个整数参数，如果它们都相等则打印equal，否则打印false
```
    def whether(a, b, c)
      if a == b && b == c
        puts true
      else
        puts false
      end
    end

    whether(1,1,1)
```
1. 编写一个程序，如果float类型的变量x和y都严格位于0和1之间则打印true，否则打印false
```
    require 'securerandom'
    def whether_between_zero_and_one
      x = SecureRandom.random_number.to_s.to_f + rand(-2..2).to_s.to_f
      y = SecureRandom.random_number.to_s.to_f + rand(-2..2).to_s.to_f
      puts "x = #{x}, y = #{y}"
      if x > 0 && x < 1 && y > 0 && y < 1
        puts true
      else
        puts false
      end
    end

    whether_between_zero_and_one
```
