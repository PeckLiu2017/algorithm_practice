def abs(x)
  if x < 0
    return -x
  else
    return x
  end
end

puts abs(ARGV[0].to_i) #Calculates the absolute value of an integer
puts abs(ARGV[0].to_f) #Calculates the absolute value of a floating point number
