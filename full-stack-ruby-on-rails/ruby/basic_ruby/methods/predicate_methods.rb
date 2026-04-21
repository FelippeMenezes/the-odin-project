puts 5.even?
puts 6.even?
puts 17.odd?

puts 12.between?(10, 15)

weather = "sunny"

def sunny?(climate)
  if climate == "sunny"
    true
  else
    false
  end
end

puts sunny?(weather)
