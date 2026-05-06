# nomes = ["Alice", "Bruno", "Carla"]
# idades = [28, 34, 22]

# nomes.zip(idades) { |nome,idade| puts "#{nome} tem #{idade} anos"}

# produtos = ["Notebook", "Mouse", "Teclado"]
# precos   = [3500, 150, 300]
# estoques = [5, 23, 0]

# estoques.zip(produtos, precos) { |estoque, produto, preco| puts "#{produto} — R$ #{preco} — #{estoque}"}

# nomes     = ["Alice", "Bruno", "Carla", "Daniel"]
# notas     = [7.5, 9.0, 4.5, 6.0]

# aprovados = nomes.zip(notas).map.with_index do |aluno, index|
#   "#{index + 1}. #{aluno[0]} (#{aluno[1]})" if aluno[1] >= 5
# end.compact

# p aprovados

clientes    = ["Ana", "Bob", "Carol", "Davi"]
compras     = [320.0, 85.0, 540.0, 210.0]
fidelidade  = [true, false, true, false]

