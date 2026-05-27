palavras = ["ruby", "python", "ruby", "java", "python", "ruby"]

p frequencia_palavra = palavras.tally

respostas = ["sim", "Sim", "NÃO", "não", "sim", "NÃO", "Sim"]

p frequencia_respostas = respostas.map { |palavra| palavra.downcase }.tally

pedidos = [
  { produto: "café", status: "entregue" },
  { produto: "chá", status: "cancelado" },
  { produto: "café", status: "entregue" },
  { produto: "suco", status: "pendente" },
  { produto: "chá", status: "entregue" },
  { produto: "café", status: "cancelado" }
]

p frequencia_pedidos_entregues = pedidos.select { |pedido| pedido[:status] == "entregue" }.map { |pedido| pedido[:produto] }.tally

produtos = [
  { nome: "camiseta P", categoria: "roupas", estoque: 2 },
  { nome: "camiseta M", categoria: "roupas", estoque: 12 },
  { nome: "tênis runner", categoria: "calçados", estoque: 3 },
  { nome: "tênis casual", categoria: "calçados", estoque: 1 },
  { nome: "boné", categoria: "acessórios", estoque: 4 },
  { nome: "meia", categoria: "acessórios", estoque: 20 },
  { nome: "jaqueta", categoria: "roupas", estoque: 0 }
]

p frequencia_estoque_critico = produtos.select { |produto| produto[:estoque] < 5 }.map { |produto| produto[:categoria] }.tally

compras = [
  { produto: "camiseta", categoria: "roupas", hora: 9 },
  { produto: "tênis", categoria: "calçados", hora: 14 },
  { produto: "boné", categoria: "acessórios", hora: 10 },
  { produto: "jaqueta", categoria: "roupas", hora: 22 },
  { produto: "meia", categoria: "roupas", hora: 8 },
  { produto: "sandália", categoria: "calçados", hora: 15 },
  { produto: "cinto", categoria: "acessórios", hora: 21 },
  { produto: "blusa", categoria: "roupas", hora: 11 },
  { produto: "chinelo", categoria: "calçados", hora: 20 }
]

categoria_mais_comprada_por_turno = compras.group_by do |compra|
  turno = compra[:hora]
  if turno >= 6 && turno < 12
    "manhã"
  elsif turno >= 12 && turno < 18
    "tarde"
  else
    "noite"
  end
end

resultado = categoria_mais_comprada_por_turno.transform_values do |compras_turno|
  categorias = compras_turno.map { |compras| compras[:categoria] }

  categorias.tally.max_by { |_categoria, quantidade| quantidade }.first
end

puts resultado




