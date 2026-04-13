
name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

print_full_name "Felippe", "Santana"
puts name

puts " "

total = 0
[1, 2, 3].each { |number| total += number }
puts total

total = 0
[1, 2, 3].each do |number|
  total += number
end
puts total

puts " "

a = 5

3.times do |n|
  a = 3
end

puts a

puts " "

a = 5

3.times do |n|
  a = 3
  b = 5
end

puts a

puts " "

arr = [1, 2, 3]

for i in arr do
  a = 5
end

puts a

puts " "

MY_CONSTANT = 'I am available throughout your app.'
puts MY_CONSTANT

$var = 'I am also available throughout your app.'
puts $var

@@instances = 0
# puts @@instances
