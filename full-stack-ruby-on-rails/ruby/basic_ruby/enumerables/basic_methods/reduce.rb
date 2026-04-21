my_numbers = [5, 6, 7, 8]

puts my_numbers.reduce { |sum, number| sum + number }

numbers = [5, 6, 7, 8]

puts numbers.reduce(1000) { |sum, number| sum + number }
