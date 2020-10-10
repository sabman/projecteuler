# brute force
# 1 < n < 1000000
# is prime? 
# are permutations prime?

def is_prime?(n)
  return false if n < 2
  (2..Math.sqrt(n).to_i).none?{ |i| n % i == 0 }
end

puts is_prime?(1399)