numeros = [3, 17, 1, 42, 8, 23]

p numeros.max_by {|numero| numero }
p numeros.min_by {|numero| numero}


produtos = [
  { nome: "Teclado",  preco: 250  },
  { nome: "Mouse",    preco: 80   },
  { nome: "Monitor",  preco: 1200 },
  { nome: "Headset",  preco: 350  }
]

produto_mais_caro = produtos.max_by{ |produto,| produto[:preco]}
produto_mais_barato = produtos.max_by{ |produto,| produto[:preco]}

puts "Mais caro: #{produto_mais_caro[:nome]}"
puts "Mais barato: #{produto_mais_barato[:nome]}"
