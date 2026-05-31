palavras = ["banana", "kiwi", "maracujá", "uva", "abacaxi"]

p menor_palavra = palavras.min_by { |palavra| palavra.length }

p maior_palavra = palavras.max_by( &:length )

produtos = [
  { nome: "Caneta", preco: 2.5 },
  { nome: "Caderno", preco: 15.0 },
  { nome: "Mochila", preco: 80.0 },
  { nome: "Borracha", preco: 1.2 },
  { nome: "Régua", preco: 3.8 }
]

nome_menor_preco = produtos.min_by { |produto| produto[:preco] }

p nome_menor_preco[:nome]

nome_maior_preco = produtos.max_by { |produto| produto[:preco] }

p nome_maior_preco[:nome]

pedidos = [
  { id: 1, cliente: "Ana",   valor: 120.0, status: "entregue" },
  { id: 2, cliente: "Bruno", valor: 45.0,  status: "pendente" },
  { id: 3, cliente: "Carla", valor: 300.0, status: "entregue" },
  { id: 4, cliente: "Diego", valor: 89.0,  status: "pendente" },
  { id: 5, cliente: "Eva",   valor: 210.0, status: "entregue" }
]

p cliente_pedidos_entregues_menor_preco = pedidos.select { |pedido| pedido[:status] == "entregue" }.min_by { |pedido| pedido[:valor] }[:cliente]

p clientes_pedidos_entregues_maior_preco = pedidos.select { |pedido| pedido[:status] == "entregue" }.max_by { |pedido| pedido[:valor]}[:cliente]

vendedores = [
  { nome: "Lucas",   vendas: [850, 1200, 430, 990] },
  { nome: "Mariana", vendas: [1500, 800, 1100, 950] },
  { nome: "Rafael",  vendas: [600, 720, 810, 880] },
  { nome: "Juliana", vendas: [1800, 400, 1300, 700] }
]

p vendedor_maior_media_vendas = vendedores.max_by { |vendedor| vendedor[:vendas].sum / vendedor[:vendas].length.to_f }[:nome]

times = [
  { nome: "Flamengo",   pontos: 78, saldo_gols: 35,  jogos: 38 },
  { nome: "Palmeiras",  pontos: 78, saldo_gols: 28,  jogos: 38 },
  { nome: "Grêmio",     pontos: 72, saldo_gols: 18,  jogos: 38 },
  { nome: "Athletico",  pontos: 65, saldo_gols: 10,  jogos: 38 },
  { nome: "Fortaleza",  pontos: 60, saldo_gols: 22,  jogos: 38 },
  { nome: "Botafogo",   pontos: 60, saldo_gols: -3,  jogos: 38 }
]

p time_menor_pontos = times.min_by { |time| [time[:pontos], time[:saldo_gols]] }[:nome]

