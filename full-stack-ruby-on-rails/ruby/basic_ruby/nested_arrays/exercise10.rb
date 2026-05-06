nomes = ["Alice", "Bruno", "Carla"]
idades = [28, 34, 22]

nomes.zip(idades) { |nome,idade| puts "#{nome} tem #{idade} anos"}

produtos = ["Notebook", "Mouse", "Teclado"]
precos   = [3500, 150, 300]
estoques = [5, 23, 0]

estoques.zip(produtos, precos) { |estoque, produto, preco| puts "#{produto} — R$ #{preco} — #{estoque}"}

nomes     = ["Alice", "Bruno", "Carla", "Daniel"]
notas     = [7.5, 9.0, 4.5, 6.0]

aprovados = nomes.zip(notas).map.with_index do |aluno, index|
  "#{index + 1}. #{aluno[0]} (#{aluno[1]})" if aluno[1] >= 5
end.compact

p aprovados

clientes    = ["Ana", "Bob", "Carol", "Davi"]
compras     = [320.0, 85.0, 540.0, 210.0]
fidelidade  = [true, false, true, false]

descontos = clientes.zip(compras, fidelidade).each_with_object({}) do |cliente, final_hash|
  cliente[1] > 300 && cliente[2] ? final_hash[cliente[0]] = (cliente[1] * 85)/100 : final_hash[cliente[0]] = cliente[1]
end

p descontos

meses     = ["Jan", "Fev", "Mar", "Abr"]
receitas  = [12000.0, 9500.0, 15000.0, 11000.0]
metas     = [10000.0, 10000.0, 14000.0, 12000.0]

relatorio = meses.zip(receitas, metas).map do |(mes, receita, meta)|
  diferenca = receita - meta
  porcentagem = (diferenca / meta * 100).round(2).abs
  sinal = receita > meta ? " ✅ +" : "❌ -"
  string_meta = receita > meta ? "% acima da meta" : "% abaixo da meta"
  "#{mes}: #{sinal}R$#{diferenca.abs} (#{porcentagem}#{string_meta})"
end

p relatorio
