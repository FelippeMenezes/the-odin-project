vendas = [
  { categoria: "livro", valor: 30 },
  { categoria: "curso", valor: 200 },
  { categoria: "livro", valor: 45 },
  { categoria: "curso", valor: 150 },
  { categoria: "livro", valor: 20 },
]

quantidade_de_vendas_total = vendas.reduce({}) do |hash, venda|
  hash[venda[:categoria]] ||= {count: 0, total: 0}
  hash[venda[:categoria]][:count] += 1
  hash[venda[:categoria]][:total] += venda[:valor]
  hash
end

p quantidade_de_vendas_total
