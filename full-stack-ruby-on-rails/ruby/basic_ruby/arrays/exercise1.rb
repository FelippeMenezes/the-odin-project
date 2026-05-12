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

pedidos = [
  { cliente: "ana", produto: "caneta", valor: 5 },
  { cliente: "bob", produto: "livro", valor: 40 },
  { cliente: "ana", produto: "caderno", valor: 15 },
  { cliente: "ana", produto: "livro", valor: 40 },
  { cliente: "bob", produto: "caneta", valor: 5 },
]

relatorio_por_cliente = pedidos. reduce({}) do |hash, pedido|
  hash[pedido[:cliente]] ||= { total: 0, produtos: []}
  hash[pedido[:cliente]][:total] += pedido[:valor]
  hash[pedido[:cliente]][:produtos] << pedido[:produto]
  hash
end

p relatorio_por_cliente

transacoes = [
  { usuario: "ana", tipo: "compra", valor: 80 },
  { usuario: "bob", tipo: "compra", valor: 120 },
  { usuario: "ana", tipo: "estorno", valor: 30 },
  { usuario: "bob", tipo: "compra", valor: 50 },
  { usuario: "ana", tipo: "compra", valor: 60 },
  { usuario: "bob", tipo: "estorno", valor: 20 },
]

relatorio_transacoes_por_usuario = transacoes.reduce({}) do |hash, transacao|
  hash[transacao[:usuario]] ||= { total: 0, operacoes: 0}
  delta = transacao[:tipo] == "compra" ? transacao[:valor] : -transacao[:valor]
  hash[transacao[:usuario]][:total] += delta
  hash[transacao[:usuario]][:operacoes] += 1
  hash
end

p relatorio_transacoes_por_usuario

notas = [
  { aluno: "ana",   materia: "math",  nota: 9 },
  { aluno: "bob",   materia: "math",  nota: 7 },
  { aluno: "ana",   materia: "portugues", nota: 8 },
  { aluno: "bob",   materia: "portugues", nota: 6 },
  { aluno: "carol", materia: "math",  nota: 10 },
  { aluno: "carol", materia: "portugues", nota: 9 },
]

relatorio_por_materia = notas.reduce({}) do |hash, nota|
  hash[nota[:materia]] ||= {soma: 0, alunos:[]}
  hash[nota[:materia]][:soma] += nota[:nota]
  hash[nota[:materia]][:alunos] << nota[:aluno]
  hash
end

relatorio_por_materia.each do |materia, dados|
  dados[:media] = (dados[:soma].to_f / dados[:alunos].length).round(2)
  dados.delete(:soma)
end

p relatorio_por_materia

estoque = {
  "caneta"  => { quantidade: 150, preco: 2.5 },
  "caderno" => { quantidade: 30,  preco: 15.0 },
  "livro"   => { quantidade: 5,   preco: 40.0 },
  "borracha"=> { quantidade: 200, preco: 1.0 },
}

produtos_com_quantidade_menor_50 = estoque.select { |_, valor| valor[:quantidade] < 50 }.map do |nome, dados|
  {nome: nome, preco: dados[:preco], quantidade: dados[:quantidade] }
end.sort_by { |produto| -produto[:preco]}

p produtos_com_quantidade_menor_50
