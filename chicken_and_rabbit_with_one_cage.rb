for x in 0..10
  for y in 0..10
    a = x + y
    b = 2*x + 4*y
    if a == 10 && b == 32
      puts "chicken is #{x},rabbit is #{y}"
    end
  end
end
