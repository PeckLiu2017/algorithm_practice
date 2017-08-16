
def factorial(n)
  if n < 0
     return -1;
  elsif n == 0
     return 1;
  elsif n < 2
     return n * 1;
  else
    return n * factorial(n - 1);
  end
end

puts factorial(7)
