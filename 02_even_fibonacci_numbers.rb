CAP = 4_000_000

def sumOfEvenFibonacciNumbers
  sum = 0
  n1, n2 = 0, 1
  while n2 < CAP
    sum += n2 if n2 % 2 == 0
    n1, n2 = n2, n1 + n2
  end

  sum
end

puts sumOfEvenFibonacciNumbers