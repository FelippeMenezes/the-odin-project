attack_by_land = true

if attack_by_land == false
  puts "release the shark"
else
  puts "release the goat"
end

attack_by_land = true

if attack_by_land == true
  puts "release the goat"
else
  puts "release the shark"
end

puts "-------"

attack_by_sea = true

if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the flying octopus "
end

attack_by_land = false

if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the flying octopus "
end

attack_by_sea = false

if attack_by_land == true
  puts "release the goat"
elsif attack_by_sea == true
  puts "release the shark"
else
  puts "release Kevin the flying octopus "
end


