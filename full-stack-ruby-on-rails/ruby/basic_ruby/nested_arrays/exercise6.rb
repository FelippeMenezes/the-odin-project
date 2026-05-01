# tasks = ["comprar pão", "pagar conta", "ligar pro cliente"]

# enumerated_tasks = tasks.map.with_index { |task, index| "#{index + 1}. #{task} "}

# p enumerated_tasks

# products = [
#   { name: "Notebook", price: 3500 },
#   { name: "Mouse", price: 150 },
#   { name: "Teclado", price: 300 }
# ]

# string_products = products.map.with_index { |product, i| "##{i + 1} - #{product[:name]} (R$ #{product[:price]})" }

# p string_products

# products = [
#   { name: "Notebook", price: 3500 },
#   { name: "Mouse", price: 150 },
#   { name: "Teclado", price: 300 },
#   { name: "Monitor", price: 1200 },
#   { name: "Headset", price: 250 }
# ]

# products_above = products.map.with_index do |product, i|
#   if product[:price] > 200
#     "##{i + 1} - #{product[:name]} (R$ #{product[:price]})"
#   end
# end

# p products_above.compact

# orders = [
#   { id: 101, customer: "Ana", total: 250.0, paid: true },
#   { id: 102, customer: "Bruno", total: 80.0, paid: false },
#   { id: 103, customer: "Carla", total: 530.0, paid: true },
#   { id: 104, customer: "Diego", total: 45.0, paid: false },
#   { id: 105, customer: "Elena", total: 910.0, paid: true }
# ]

# new_orders = orders.select{ |order| order[:paid] == true }.map.with_index do |order, i|
#     "Recibo ##{i + 1} — #{order[:customer]} — R$#{order[:total]}"
# end.compact

# p new_orders

students = [
  { name: "Ana",    scores: [90, 85, 92] },
  { name: "Bruno",  scores: [40, 55, 48] },
  { name: "Carla",  scores: [70, 68, 74] },
  { name: "Diego",  scores: [95, 98, 100] },
  { name: "Elena",  scores: [50, 45, 60] }
]

medals = ["🥇", "🥈", "🥉"]

ranking = students.sort_by do |student|
  student[:scores].sum / student[:scores].length
end.reverse.select do |student|
  student[:scores].sum / student[:scores].length >= 70
end.map.with_index do |student, i|
  formatted_string = "º lugar — #{student[:name]} — #{(student[:scores].sum / student[:scores].length.to_f).round(2)}"
  medal = medals[i] ? "#{medals[i]}" : ""
  if i == 0
    "#{medal} #{i + 1}".concat(formatted_string)
  elsif i == 1
    "#{medal} #{i + 1}".concat(formatted_string)
  elsif i == 2
    "#{medal}".concat(formatted_string)
  else
    "#{i + 1}".concat(formatted_string)
  end
end

p ranking
