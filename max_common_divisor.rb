def max_common_divisor(a,b)
  while a != b
    if a > b
      a = a - b
    else
      b = b - a
    end
  end

  return a
end

puts max_common_divisor(12,42)
