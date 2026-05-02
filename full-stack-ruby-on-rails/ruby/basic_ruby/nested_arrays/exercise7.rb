# numeros = [3, 8, 1, 14, 7, 22, 5, 19]

# numeros_selecionados = numeros.select { |number| number > 10 }

# p numeros_selecionados

# usuarios = [
#   { nome: "Ana",    idade: 17 },
#   { nome: "Bruno",  idade: 23 },
#   { nome: "Carla",  idade: 15 },
#   { nome: "Diego",  idade: 31 },
#   { nome: "Elena",  idade: 18 }
# ]

# usuarios_maiores18 = usuarios.select { |usuario| usuario[:idade] >= 18 }

# p usuarios_maiores18

# produtos = [
#   { nome: "Notebook",  preco: 3500, estoque: 0  },
#   { nome: "Mouse",     preco: 120,  estoque: 15 },
#   { nome: "Teclado",   preco: 280,  estoque: 0  },
#   { nome: "Monitor",   preco: 1800, estoque: 3  },
#   { nome: "Headset",   preco: 450,  estoque: 8  }
# ]

# nomes_produtos = produtos.select { |produto| produto[:estoque] > 0 }.map { |produto| produto[:nome] }

# p nomes_produtos

# pedidos = [
#   { id: 1, cliente: "Ana",   valor: 250.0, status: "pago"      },
#   { id: 2, cliente: "Bruno", valor: 890.0, status: "pendente"  },
#   { id: 3, cliente: "Carla", valor: 130.0, status: "pago"      },
#   { id: 4, cliente: "Diego", valor: 45.0,  status: "cancelado" },
#   { id: 5, cliente: "Elena", valor: 670.0, status: "pago"      }
# ]

# total_pedidos_pagos = pedidos.select { |pedido| pedido[:status] == "pago" }.map { |pedido| pedido[:valor] }.sum

# p total_pedidos_pagos

vendedores = [
  { nome: "Ana",   vendas: 32, meta: 30, regiao: "sul"   },
  { nome: "Bruno", vendas: 18, meta: 25, regiao: "norte" },
  { nome: "Carla", vendas: 45, meta: 40, regiao: "sul"   },
  { nome: "Diego", vendas: 25, meta: 25, regiao: "norte" },
  { nome: "Elena", vendas: 12, meta: 20, regiao: "sul"   }
]

meta_sul = vendedores.select { |vendedor| vendedor[:regiao] == "sul" && vendedor[:vendas] >= vendedor[:meta] }.map {|vendedor|
  "#{vendedor[:nome]} — #{vendedor[:vendas]} vendas (meta: #{vendedor[:meta]}) ✅"}

p meta_sul
