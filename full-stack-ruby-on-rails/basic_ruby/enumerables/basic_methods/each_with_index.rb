fruits = ["apple", "banana", "strawberry", "pineapple"]

puts fruits.each_with_index { |fruit, index| puts fruit if index.even? }
