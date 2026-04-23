estoque = [
  { produto: "Teclado",  preco: 250.0, quantidade: 4  },
  { produto: "Mouse",    preco: 80.0,  quantidade: 12 },
  { produto: "Monitor",  preco: 1200.0, quantidade: 2 },
  { produto: "Headset",  preco: 350.0, quantidade: 0  },
  { produto: "Webcam",   preco: 200.0, quantidade: 7  }
]

# Produtos disponíveis: Teclado, Mouse, Monitor, Webcam
# 1
# itens_disponíveis = estoque.select do |item|
#   item[:quantidade] > 0
# end
# produtos_disponiveis = itens_disponíveis.map do |item|
#   item[:produto]
# end

# 2
# produtos_disponiveis = estoque.select { |item| item[:quantidade] > 0 }.map { |item| item[:produto]}

produtos_disponiveis = estoque
  .select { |item| item[:quantidade] > 0 }
  .map { |item| item[:produto]}

puts "Produtos disponíveis: #{produtos_disponiveis.join(", ")}"

# To do
# Produto mais caro: Monitor
# Valor total em estoque: R$ 4420.0
