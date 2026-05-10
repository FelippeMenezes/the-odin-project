# palavras = ["gato", "cão", "gato", "peixe", "cão", "gato"]

# def quantidade_palavras(words)
#   words_count = words.reduce({}) do |hash, word|
#     hash[word] ||= 0
#     hash[word] += 1
#     hash
#   end
#   p words_count
# end

# quantidade_palavras(palavras)

# compras = [
#   { produto: "banana", categoria: "fruta" },
#   { produto: "maçã",   categoria: "fruta" },
#   { produto: "leite",  categoria: "laticínio" },
#   { produto: "queijo", categoria: "laticínio" },
#   { produto: "uva",    categoria: "fruta" }
# ]

# def produto_por_categoria(list)
#   final_hash = list.reduce({}) do |hash, item|
#     hash[item[:categoria]] ||= []
#     hash[item[:categoria]] << item[:produto]
#     hash
#   end
#   p final_hash
# end

# produto_por_categoria(compras)

# vendas = [
#   { vendedor: "Ana",   valor: 200 },
#   { vendedor: "Bruno", valor: 150 },
#   { vendedor: "Ana",   valor: 350 },
#   { vendedor: "Bruno", valor: 100 },
#   { vendedor: "Ana",   valor: 50  }
# ]

# def total_por_vendedor(sales)
#   total_sales = sales.reduce({}) do |hash, sale|
#     hash[sale[:vendedor]] ||= { total: 0 , vendas: 0}
#     hash[sale[:vendedor]][:total] += sale[:valor]
#     hash[sale[:vendedor]][:vendas] += 1
#     hash
#   end
#   p total_sales
# end

# total_por_vendedor(vendas)

# pedidos = [
#   { cliente: "Carlos", produto: "notebook", valor: 3200, status: "pago" },
#   { cliente: "Diana",  produto: "mouse",    valor: 120,  status: "pago" },
#   { cliente: "Carlos", produto: "teclado",  valor: 280,  status: "cancelado" },
#   { cliente: "Diana",  produto: "monitor",  valor: 1500, status: "pago" },
#   { cliente: "Carlos", produto: "headset",  valor: 450,  status: "pago" }
# ]

# def total_gasto_pago(orders)
#   total_payed = orders.reduce({}) do |hash, order|
#     next hash if order[:status] =="cancelado"
#     hash[order[:cliente]] ||= 0
#     hash[order[:cliente]] += order[:valor]
#     hash
#   end
#   p total_payed
# end

# total_gasto_pago(pedidos)

estoque = {
  "notebook" => { quantidade: 5,  preco: 3200 },
  "mouse"    => { quantidade: 23, preco: 120  },
  "teclado"  => { quantidade: 8,  preco: 280  },
  "monitor"  => { quantidade: 2,  preco: 1500 }
}

def strings_sorted(stock)
  stock
  .sort_by { |_, valor| -valor[:preco] }
  .map { |chave, valor| "#{chave}: R$#{valor[:preco]} (#{valor[:quantidade]} un.)" }
end

p strings_sorted(estoque)


