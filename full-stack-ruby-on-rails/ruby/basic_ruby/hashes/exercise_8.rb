hash = {}
hash[:tags] = []
hash[:tags] << "ruby"
hash[:tags] << "backend"

p hash[:tags]

hash = {}
hash[:visitas] = 0
hash[:visitas] += 1
hash[:visitas] += 1
hash[:visitas] += 1

p hash[:visitas]

palavras = ["sol", "chuva", "vento", "lua", "tempestade", "ceu"]

palavras_com_mais_de4 = palavras.reduce ([]) do |novo_array, palavra|
  novo_array << palavra.upcase if palavra.length > 4
  novo_array
end

p palavras_com_mais_de4

palavras = ["ruby", "python", "ruby", "java", "python", "ruby"]

ocorrencia_palavras = palavras.reduce({}) do |hash, palavra|
  hash[palavra] ||= 0
  hash[palavra] += 1
  hash
end

p ocorrencia_palavras

produtos = [
  { nome: "camiseta", categoria: "roupas" },
  { nome: "notebook", categoria: "tech" },
  { nome: "calça", categoria: "roupas" },
  { nome: "teclado", categoria: "tech" },
  { nome: "tênis", categoria: "calçados" }
]

produtos_por_categoria = produtos.reduce({}) do |hash, produto|
  chave = produto[:categoria]
  hash[chave] ||= []
  hash[chave] << produto[:nome]
  hash
end

p produtos_por_categoria

pedidos = [
  { cliente: "Ana", valor: 120.0, status: "entregue" },
  { cliente: "Bob", valor: 80.0,  status: "pendente" },
  { cliente: "Ana", valor: 200.0, status: "entregue" },
  { cliente: "Bob", valor: 150.0, status: "entregue" },
  { cliente: "Ana", valor: 90.0,  status: "cancelado" },
  { cliente: "Bob", valor: 60.0,  status: "entregue" }
]

relatorio_pedidos_entregues = pedidos.select { |pedido| pedido[:status] == "entregue" }.reduce({}) do |hash, pedido|
  chave = pedido[:cliente]
  hash[chave] ||= { total: 0, pedidos: 0}
  hash[chave][:total] += pedido[:valor]
  hash[chave][:pedidos] += 1
  hash
end

p relatorio_pedidos_entregues

compras = {
  "Ana"    => ["arroz", "feijão", "café"],
  "Bob"    => ["pão"],
  "Carlos" => ["leite", "ovos", "manteiga", "queijo"]
}

detalhes_compras = compras.reduce([]) do |array, (chave, valor)|
  array << {
    cliente: chave,
    itens: valor.size,
    lista: valor
  }
  array
end.sort_by { |cliente| -cliente[:itens]}

p detalhes_compras

