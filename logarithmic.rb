# compute binarySearch time
def logarithmic(n)
  result = 0
  while n > 1
    n = n.to_f / 2
    result += 1
    puts "n=#{n},the search times is #{result}"
  end

  return result
end

logarithmic(ARGV[0].to_i)
