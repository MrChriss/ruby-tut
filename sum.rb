my_array = (1..100).to_a
temp = 0

my_array.each do |num|
    temp += num
end
puts temp
# This can also be solved as:
# puts (1..100).to_a.inject(:+)
