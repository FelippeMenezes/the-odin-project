words = ["cat", "elephant", "ox", "hippopotamus", "bee"]

words_count_hash = words.each_with_object(Hash.new(0)) do |word, hash|
  hash[word] = word.length
end

p words_count_hash

orders = [
  { id: 1, product: "notebook", quantity: 2 },
  { id: 2, product: "mouse", quantity: 5 },
  { id: 3, product: "teclado", quantity: 1 }
]

product_by_id = orders.each_with_object({}) do |order, new_hash|
  new_hash[order[:id]] = order[:product]
end

p product_by_id

orders = [
  { id: 1, product: "notebook", quantity: 2 },
  { id: 2, product: "mouse", quantity: 5 },
  { id: 3, product: "teclado", quantity: 1 },
  { id: 4, product: "monitor", quantity: 3 },
  { id: 5, product: "webcam", quantity: 0 }
]

product_quantity = orders.select { |order| order[:quantity] > 1 }.each_with_object({}) do |order, hash_new|
  hash_new[order[:product]] = order[:quantity]
end

p product_quantity

orders = [
  { product: "notebook", quantity: 2, unit_price: 3500.0 },
  { product: "mouse", quantity: 5, unit_price: 150.0 },
  { product: "teclado", quantity: 1, unit_price: 300.0 },
  { product: "notebook", quantity: 1, unit_price: 3500.0 },
  { product: "mouse", quantity: 2, unit_price: 150.0 }
]

total_revenue_product = orders.each_with_object(Hash.new(0)) do |order, hash_total|
  hash_total[order[:product]] += (order[:unit_price] * order[:quantity])
end

p total_revenue_product

orders = [
  { product: "notebook", quantity: 2, unit_price: 3500.0 },
  { product: "mouse", quantity: 5, unit_price: 150.0 },
  { product: "teclado", quantity: 1, unit_price: 300.0 },
  { product: "notebook", quantity: 1, unit_price: 3500.0 },
  { product: "mouse", quantity: 2, unit_price: 150.0 }
]

hash_by_product = orders.each_with_object({}) do |order, product_hash|
  product_hash[order[:product]] ||= { total_revenue: 0, total_quantity: 0 }
  product_hash[order[:product]][:total_revenue] += (order[:quantity] * order[:unit_price])
  product_hash[order[:product]][:total_quantity] += order[:quantity]
end

p hash_by_product

