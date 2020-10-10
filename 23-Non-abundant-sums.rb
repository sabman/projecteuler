def proper_divisors(num)
  (1...(num)).select { |n| num % n == 0 }
end

def abundant?(n)   
  proper_divisors(n).reduce(:+) > n
end 

# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

abundents = (12..28123).map { |n| print "." if n % 100 == 0; n if abundant?(n) }.compact
