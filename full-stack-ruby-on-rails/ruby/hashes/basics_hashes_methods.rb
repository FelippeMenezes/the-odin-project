name_and_age = { "Felippe" => 43, "Rachell" => 39, "Maria" => 67}

puts name_and_age.select { |k,v| k == "Felippe" }

puts name_and_age.select { |k,v| (k == "Felippe") || (v == 67) }

puts name_and_age.fetch("Rachell")

# puts name_and_age.fetch("Alice")

puts name_and_age.fetch("Alice", "Alice isn't in this hash")

p name_and_age.to_a

p name_and_age
