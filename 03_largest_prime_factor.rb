def largestPrimeFactor(n)
  return nil if n < 2
  return 2 if n == 2

  lpf = -1
  upper_limit = (n / 2) + 1
  2.upto(upper_limit) do |i|
    if n % i == 0 && is_prime?(i)
      lpf = i
    end
  end

  return lpf if lpf > 0
end

def is_prime?(n)
  return false if n < 2 || n % 2 == 0
  return true if n == 2
  upper_limit = Math.sqrt(n) + 1
  2.upto(upper_limit) do |i|
    next if i % 2 == 0
    return false if n % i == 0
  end

  return true
end

puts largestPrimeFactor(600851475143)