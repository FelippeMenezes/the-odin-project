odds = { one: 1, three: 3, five: 5}
even = { two: 2, four: 4, six: 6 }

puts odds.merge(even)
puts odds
puts even

puts odds.merge!(even)
puts odds
puts even

