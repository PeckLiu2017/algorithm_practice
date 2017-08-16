def is_prime(n)
  if n < 2
    return false
  end
  if n == 2
    return true
  end
  for i in 2..n-1
    if n % i == 0
      return false
    end
  end
  return true
end

for i in 1..100
  if is_prime(i)
    print "#{i} "
  end
end
#puts is_prime(ARGV[0].to_i)
