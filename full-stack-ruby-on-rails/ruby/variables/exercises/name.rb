# name.rb

puts "What is your first name?"
first_name = gets.chomp

puts "Whats is your last name?"
last_name = gets.chomp

puts "Hello, " + first_name + " " + last_name + "!"

puts " "

10.times do
  puts  first_name + " " + last_name
end
