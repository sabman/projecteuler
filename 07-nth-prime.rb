require "prime"

number_to_check=1168484
# prime_count=1168484
sum = 18286981

while prime_count < 2_000_000
  if Prime.prime?(number_to_check)
    # prime_count += 1
    # puts prime_count
    puts number_to_check

    puts "="*10
    sum += number_to_check
  end
  number_to_check += 1 
end

puts number_to_check
puts sum