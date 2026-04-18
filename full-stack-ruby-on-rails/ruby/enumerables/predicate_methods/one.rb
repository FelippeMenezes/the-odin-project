fruits = ["apple", "banana", "strawberry", "pineapple"]

puts fruits.one? { |fruit| fruit.length > 9 }

puts fruits.one? { |fruit| fruit.length > 2 }

