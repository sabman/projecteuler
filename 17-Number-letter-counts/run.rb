require 'humanize'

total = (1..1000).reduce(0) do |sum, current|
  sum += current.humanize.gsub(/\W+/, "").length
  sum
end

puts total