
def sumOfMultiplesBelow(n)
  # (0...n).inject(0) do |sum, i|
  #   if divisible?(i, 3) || divisible?(i, 5)
  #     sum += i
  #   end
  #   sum
  # end

  (0...n).inject(0) { |sum, i| divisible?(i, *[3, 5]) ? sum += i : sum }
end

def divisible?(dividend, *divisors)
  divisors.any?{ |divisor| dividend % divisor == 0 }
end