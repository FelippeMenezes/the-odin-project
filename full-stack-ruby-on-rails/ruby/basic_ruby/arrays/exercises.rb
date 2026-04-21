arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts true
end



new_array = [["test", "hello", "world"],["example", "mem"]]

puts new_array.last.first
puts new_array[1][0]

array = [15, 7, 18, 5, 12, 8, 5, 1]



puts array.index(5)

# puts array.index[5]

puts array[5]



string = "Welcome to America!"
puts a = string[6]
puts b = string[11]
puts c = string[19]


names = ["Maria", "Rachell", "Felippe"]

names.each_with_index do |name, i|
  puts "#{i} - #{name}"
end


age = [1, 2, 3, 4, 5]
double_age = []

age.each do |n|
  double_age << n + 2
end

p age
p double_age

p numbers = [1, 2, 3, 4]
p squares = numbers.map { |n| n**2 }
