def d(n)
  # numbers < n which divide evenly into n
  i = 1
  divisors = []
  
  n.times do
    divisors << i if n % i == 0
    i += 1
  end
  
  divisors.reduce(:+)
end

(1..9).reduce({}) do |memo, n|
  memo[n] = d(n)
end