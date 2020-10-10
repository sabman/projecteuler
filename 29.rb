vals = (2..100).map do |a|
  (2..100).map do |b|
    a**b
  end
end.flatten

puts vals.uniq.size