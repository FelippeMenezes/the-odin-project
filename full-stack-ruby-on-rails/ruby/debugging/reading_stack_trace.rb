require 'pry-byebug'

def isogram_1?(string)
  original_length = string.length
  string_array = string.downcase.split("")
  puts string_array
  unique_length = string_array.uniq.length
  puts unique_length
  original_length == unique_length
end

isogram_1?("Odin")

def isogram_2?(string)
  original_length = string.length
  string_array = string.downcase.split("")
  p string_array
  unique_length = string_array.uniq.length
  p unique_length
  original_length == unique_length
end

isogram_2?("Odin")

puts "Using puts:"
puts []
puts x = nil
p "Using p:"
p []
p x = nil

def isogram_3?(string)
  original_length = string.length
  string_array = string.downcase.split("")
  puts string_array
  unique_length = string_array.uniq.length
  puts unique_length
  original_length == unique_length
end
