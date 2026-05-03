idades = [14, 23, 17, 31, 16, 45, 12]

menores18 = idades.reject { |idade| idade >= 18 }

p menores18

produtos = [
  { nome: "Camiseta", preco: 49.90, estoque: 0 },
  { nome: "Calça",    preco: 129.90, estoque: 3 },
  { nome: "Boné",     preco: 39.90, estoque: 0 },
  { nome: "Meia",     preco: 19.90, estoque: 12 },
  { nome: "Jaqueta",  preco: 299.90, estoque: 1 }
]

produtos_estoque = produtos.reject { |produto| produto[:estoque] <= 0 }

p produtos_estoque

produtos = [
  { nome: "Camiseta", preco: 49.90, estoque: 0 },
  { nome: "Calça",    preco: 129.90, estoque: 3 },
  { nome: "Boné",     preco: 39.90, estoque: 0 },
  { nome: "Meia",     preco: 19.90, estoque: 12 },
  { nome: "Jaqueta",  preco: 299.90, estoque: 1 }
]

produtos_estoque_upcase = produtos.reject { |produto| produto[:estoque] <= 0 }.map { |produto| produto[:nome].upcase }

p produtos_estoque_upcase

pedidos = [
  { id: 1, cliente: "Ana",    valor: 250.0, status: "pago" },
  { id: 2, cliente: "Bruno",  valor: 80.0,  status: "cancelado" },
  { id: 3, cliente: "Carla",  valor: 410.0, status: "pago" },
  { id: 4, cliente: "Diego",  valor: 55.0,  status: "pendente" },
  { id: 5, cliente: "Elena",  valor: 990.0, status: "cancelado" },
  { id: 6, cliente: "Felipe", valor: 130.0, status: "pago" }
]

total_pedidos_nao_pagos = pedidos.reject { |pedido| pedido[:status] == "pago"}.sum { |pedido| pedido[:valor] }

p total_pedidos_nao_pagos

pedidos = [
  { id: 1, cliente: "Ana",    valor: 250.0, status: "pago",      itens: 3 },
  { id: 2, cliente: "Bruno",  valor: 80.0,  status: "cancelado", itens: 1 },
  { id: 3, cliente: "Carla",  valor: 410.0, status: "pago",      itens: 5 },
  { id: 4, cliente: "Diego",  valor: 55.0,  status: "pendente",  itens: 1 },
  { id: 5, cliente: "Elena",  valor: 990.0, status: "cancelado", itens: 8 },
  { id: 6, cliente: "Felipe", valor: 130.0, status: "pago",      itens: 2 }
]

pedidos_nao_pagos_mais_de_um_item = pedidos.reject { |pedido| pedido[:status] == "pago" || pedido[:itens] <= 1 }.map do |pedido|
  plural_singular = pedido[:itens] == 1 ? "item" : "itens"
  "[#{pedido[:status].upcase}] #{pedido[:cliente]} — R$ #{pedido[:valor]} (#{pedido[:itens]} #{plural_singular})"
end

p pedidos_nao_pagos_mais_de_um_item
