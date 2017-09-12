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
