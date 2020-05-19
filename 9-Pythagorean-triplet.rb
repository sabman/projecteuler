limit = 1000
curr_sum=0
a = 1
b = a+1

while a <= limit
  while a+b <= limit
    c_sqr = a*a + b*b
    puts [Math.sqrt(c_sqr), a , b].inspect
    # puts c_sqr
    if (Math.sqrt(c_sqr) % 1 == 0)
      curr_sum = Math.sqrt(c_sqr) + a + b 
    end
    # puts curr_sum if (c_sqr % 1 == 0)
    # puts a * b * c if curr_sum == 1000
    b = b + 1
    a = a + 1
  end
end