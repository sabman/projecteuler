current_longest=11
11.upto(999).each do |n, i|
  puts({n => 1.0/n})
end

def get_cycle(n)
  frac = (1.0/n).to_s.split(".")[1]

  # initialize window size
  window_size = 1
  frac.in_groups_of()
  # frac.each_char do |c, i|
  # end
end