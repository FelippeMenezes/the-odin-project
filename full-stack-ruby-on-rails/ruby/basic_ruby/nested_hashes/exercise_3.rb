produtos = [
  { nome: "Teclado", preco: 250.0 },
  { nome: "Monitor", preco: 1200.0 },
  { nome: "Mouse",   preco: 80.0 }
]

maior_preco = produtos
  .max_by { |item| item[:preco]}[:nome]


puts "Produto mais caro: #{maior_preco}"
