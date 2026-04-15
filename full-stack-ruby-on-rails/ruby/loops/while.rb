while gets.chomp != "yes" do
  puts "Are we there yet?"
end

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done!"
