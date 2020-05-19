def check_equality(num)
  num.to_s == num.to_s.reverse
end


def find_palindrome
  r1 = (999..1)
  r2 = r1

  (r1.first).downto(r1.last).each do |i|
    (r2.first).downto(r2.last).each do |j|
      if check_equality( i * j )
        puts "#{i} * #{j} = #{i*j}"
        return
      end
    end
  end
end

find_palindrome

