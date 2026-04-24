# numeros = [1, 2, 3, 4, 5]

# triplo_numeros = numeros.map { |numero| numero * 3}
# p triplo_numeros


# nomes = ["felippe", "ana", "bruno", "carla"]

# nomes_maiusculos = nomes.map { |nome| nome.capitalize}
# p nomes_maiusculos

# produtos = [
#   { nome: "Teclado", preco: 250 },
#   { nome: "Mouse",   preco: 80  },
#   { nome: "Monitor", preco: 1200 }
# ]

# nomes_produtos = produtos.map { |produto| produto[:nome]}
# p nomes_produtos

produtos_precificados = [
  { nome: "Teclado", preco: 250 },
  { nome: "Mouse",   preco: 80  },
  { nome: "Monitor", preco: 1200 }
]

produtos_desconto_10 = produtos_precificados.map do |item|
  {
    nome: item[:nome],
    preco: (item[:preco] * 90) / 100
  }
end

p produtos_desconto_10

# pedidos = [
#   { produto: "Pizza",   valor: 45.0 },
#   { produto: "Coca",    valor: 8.0  },
#   { produto: "Sorvete", valor: 18.0 }
# ]

# pedidos_formatados = pedidos.map { |produto| "#{produto[:produto]}: R$ #{produto[:valor]}"}
# p pedidos_formatados

# funcionarios = [
#   { nome: "Ana",    salario: 3000 },
#   { nome: "Bruno",  salario: 8000 },
#   { nome: "Carla",  salario: 5000 },
#   { nome: "Diego",  salario: 12000 }
# ]

# nivel_funcionarios = funcionarios.map do |funcionario|
#   if funcionario[:salario] <= 5000
#     funcionario.merge(nivel: :junior)
#   elsif funcionario[:salario] > 5000 && funcionario[:salario] <= 9000
#     funcionario.merge(nivel: :pleno)
#   else
#     funcionario.merge(nivel: :senior)
#   end
# end
# p nivel_funcionarios

# turmas = [
#   { nome: "Turma A", alunos: ["felippe", "ana", "bruno"] },
#   { nome: "Turma B", alunos: ["carla", "pedro"] }
# ]

# alunos_maisculos = turmas.map do |turma|
#   {
#   nome: turma[:nome],
#   alunos: turma[:alunos].map do |aluno|
#     aluno.capitalize
#   end
#   }
# end

# p alunos_maisculos

# estoque = [
#   { nome: "Notebook", preco: 3500.0, disponivel: true  },
#   { nome: "Tablet",   preco: 1200.0, disponivel: false },
#   { nome: "Teclado",  preco: 250.0,  disponivel: true  },
#   { nome: "Mouse",    preco: 80.0,   disponivel: false },
#   { nome: "Monitor",  preco: 1200.0, disponivel: true  }
# ]

# produtos_disponiveis = estoque
#   .select { |item| item[:disponivel] }
#   .map { |item| item[:nome] }

# p produtos_disponiveis
