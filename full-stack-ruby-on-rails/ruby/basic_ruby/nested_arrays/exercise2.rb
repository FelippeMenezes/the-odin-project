produtos = [
  { nome: "Teclado", preco: 150 },
  { nome: "Mouse", preco: 80 },
  { nome: "Monitor", preco: 900 },
  { nome: "Headset", preco: 200 }
]

produtos.each_with_index do |produto, index|
  puts "Produto ##{index + 1}: #{produto[:nome]} - R$ #{produto[:preco]}"
end
