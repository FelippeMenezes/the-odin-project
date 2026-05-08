# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# oerdered_numbers = numbers.group_by { |number| number.even? ? "even" : "odd" }

# p grouped_numbers

# words = ["banana", "abacaxi", "uva", "kiwi", "manga", "amora", "limão"]

# grouped_by_length = words.group_by { |word|word.length }

# p grouped_by_length

# users = [
#   { name: "Ana", age: 17 },
#   { name: "Bruno", age: 23 },
#   { name: "Clara", age: 15 },
#   { name: "Diego", age: 31 },
#   { name: "Eva", age: 19 }
# ]

# grouped_by_age = users.group_by { |user| user[:age] <= 18 ? "minor" : "adult" }.transform_values { |user_group| user_group.map { |user| user[:name] } }

# p grouped_by_age

# orders = [
#   { id: 1, status: "pending",   total: 120.0 },
#   { id: 2, status: "shipped",   total: 340.0 },
#   { id: 3, status: "pending",   total: 80.0  },
#   { id: 4, status: "delivered", total: 220.0 },
#   { id: 5, status: "shipped",   total: 150.0 },
#   { id: 6, status: "delivered", total: 95.0  }
# ]

# orders_by_status = orders.group_by { |order| order[:status] }
# .transform_values do |group|
#   {
#   count: group.count,
#   total: group.sum { |o| o[:total] }
#   }
# end

# p orders_by_status

transactions = [
  { user: "Ana",   category: "food",    amount: 45.0  },
  { user: "Bruno", category: "tech",    amount: 320.0 },
  { user: "Ana",   category: "tech",    amount: 150.0 },
  { user: "Clara", category: "food",    amount: 60.0  },
  { user: "Bruno", category: "food",    amount: 30.0  },
  { user: "Clara", category: "tech",    amount: 200.0 },
  { user: "Ana",   category: "food",    amount: 25.0  },
  { user: "Bruno", category: "travel",  amount: 800.0 }
]

users_transctions = transactions.group_by { |transaction| transaction[:user] }
                                .transform_values do |user_info|
                                  user_info.group_by { |user_transaction| user_transaction[:category] }
                                           .transform_values { |group| group.sum { |t| t[:amount] } }
                                end

p users_transctions
