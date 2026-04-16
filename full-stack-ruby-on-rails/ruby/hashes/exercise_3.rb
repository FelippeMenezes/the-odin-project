numbers = { one: 1, three: 3, five: 5, two: 2, four: 4, six: 6}

numbers.each do | key, value |
  puts "The key of number #{value} is #{key}"
end

numbers.each_key do | key |
  puts key
end

numbers.each_value do | value |
  puts value
end




