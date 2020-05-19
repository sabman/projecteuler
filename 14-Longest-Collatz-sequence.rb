def when_even n
  n/2
end

def when_odd n
  3*n+1
end

def converges_to_one? n
  chain = 1
  while true
    print "." if n.odd?
    n = n.odd? ? when_odd(n) : when_even(n)
    chain += 1
    return chain if n == 1
  end
  
  return false
end


curr_start_n = 250000
max = curr_start_n

chains = {}
while curr_start_n > 1
  print "trying #{curr_start_n}"
  chains[curr_start_n] = converges_to_one?(curr_start_n)
  puts "\n"
  curr_start_n -= 1
end

puts "number => longest_chain"
puts "#{chains.keys[chains.values.index(chains.values.max)]} => #{chains.values.max}"