itens = [
  { nome: "Teclado", preco: 250.0, quantidade: 4 },
  { nome: "Mouse",   preco: 80.0,  quantidade: 12 },
  { nome: "Monitor", preco: 1200.0, quantidade: 2 }
]

valor_total_estoque = itens
  .sum { |item| item[:preco] * item[:quantidade]}

puts "Valor total: R$ #{valor_total_estoque}"
