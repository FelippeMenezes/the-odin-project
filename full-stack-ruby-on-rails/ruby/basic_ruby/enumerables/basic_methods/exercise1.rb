# numeros = [3, 7, 2, 9, 4]

# numeros_somados = numeros.reduce(0) { |total, numero| total + numero }

# p numeros_somados

# carrinho = [
#   { produto: "Notebook", preco: 3500 },
#   { produto: "Mouse",    preco: 120  },
#   { produto: "Teclado",  preco: 280  },
#   { produto: "Monitor",  preco: 1800 }
# ]

# total_preco = carrinho.reduce(0) { |total, produto| total + produto[:preco] }

# p total_preco

# produtos = [
#   { nome: "Notebook", preco: 3500, ativo: true  },
#   { nome: "Mouse",    preco: 120,  ativo: false },
#   { nome: "Teclado",  preco: 280,  ativo: true  },
#   { nome: "Monitor",  preco: 1800, ativo: false },
#   { nome: "Webcam",   preco: 350,  ativo: true  }
# ]

# soma_produtos_ativos = produtos.select { |produto| produto[:ativo] == true }.reduce(0) { |total, produto| total + produto[:preco] }

# p soma_produtos_ativos

# pedidos = [
#   { id: 1, cliente: "Ana",   valor: 450.0,  status: "pago"      },
#   { id: 2, cliente: "Bruno", valor: 1200.0, status: "pendente"  },
#   { id: 3, cliente: "Ana",   valor: 300.0,  status: "pago"      },
#   { id: 4, cliente: "Carla", valor: 870.0,  status: "pago"      },
#   { id: 5, cliente: "Bruno", valor: 95.0,   status: "cancelado" },
#   { id: 6, cliente: "Carla", valor: 430.0,  status: "pendente"  }
# ]

# total_pago_cliente = pedidos.select { |pedido| pedido[:status] == "pago" }.reduce({}) do |hash, pedido|
#   cliente = pedido[:cliente]
#   hash[cliente] ||= 0
#   hash[cliente] += pedido[:valor]
#   hash
# end

# p total_pago_cliente

vendas = [
  { vendedor: "Carlos", produto: "Notebook", valor: 3500.0 },
  { vendedor: "Ana",    produto: "Mouse",    valor: 120.0  },
  { vendedor: "Carlos", produto: "Monitor",  valor: 1800.0 },
  { vendedor: "Ana",    produto: "Notebook", valor: 3500.0 },
  { vendedor: "Bruno",  produto: "Teclado",  valor: 280.0  },
  { vendedor: "Ana",    produto: "Webcam",   valor: 350.0  },
  { vendedor: "Bruno",  produto: "Mouse",    valor: 120.0  },
  { vendedor: "Carlos", produto: "Teclado",  valor: 280.0  }
]

relatorio_vendedor = vendas.reduce({}) do |hash,venda|
  vendedor = venda[:vendedor]
  hash[vendedor] ||= { total: 0, vendas: 0 }
  hash[vendedor][:total] += venda[:valor]
  hash[vendedor][:vendas] += 1
  hash
end

p relatorio_vendedor
