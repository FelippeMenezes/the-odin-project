friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }

puts friends

buddies = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

buddies.map! { |friend| friend.upcase }

puts buddies
