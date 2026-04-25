# numeros = [3, 17, 1, 42, 8, 23]

# p numeros.max_by {|numero| numero }
# p numeros.min_by {|numero| numero}


# produtos = [
#   { nome: "Teclado",  preco: 250  },
#   { nome: "Mouse",    preco: 80   },
#   { nome: "Monitor",  preco: 1200 },
#   { nome: "Headset",  preco: 350  }
# ]

# produto_mais_caro = produtos.max_by{ |produto,| produto[:preco]}
# produto_mais_barato = produtos.max_by{ |produto,| produto[:preco]}

# puts "Mais caro: #{produto_mais_caro[:nome]}"
# puts "Mais barato: #{produto_mais_barato[:nome]}"

# nomes = ["Felippe", "Ana", "Bruno", "Carla", "Jo"]

# mais_longo = nomes.max_by{ |nome| nome.length}
# mais_curto =  nomes.min_by{ |nome| nome.length}

# puts "mais curto: #{mais_curto}"
# puts "mais longo: #{mais_longo}"

# vendedores = [
#   { nome: "Ana",    vendas: 42, ticket_medio: 350.0 },
#   { nome: "Bruno",  vendas: 28, ticket_medio: 890.0 },
#   { nome: "Carla",  vendas: 61, ticket_medio: 210.0 }
# ]

# maior_faturamento = vendedores.max_by{|vendedor| vendedor[:vendas] * vendedor[:ticket_medio]}
# puts "Maior faturamento: #{maior_faturamento[:nome]} (#{maior_faturamento[:vendas] * maior_faturamento[:ticket_medio]} )}"

# alunos = [
#   { nome: "Felippe", notas: [8, 9, 7]  },
#   { nome: "Ana",     notas: [10, 6, 8] },
#   { nome: "Bruno",   notas: [4, 5, 3]  },
#   { nome: "Carla",   notas: [9, 9, 10] }
# ]

# maior_media = alunos.max_by { |aluno| aluno[:notas].sum / aluno[:notas].length.to_f}
# menor_media = alunos.min_by { |aluno| aluno[:notas].sum / aluno[:notas].length.to_f}

# puts "Melhor anuno: #{maior_media[:nome]} (#{(maior_media[:notas].sum / maior_media[:notas].length.to_f).round(1)})"
# puts "Pior anuno: #{menor_media[:nome]} (#{(menor_media[:notas].sum / menor_media[:notas].length.to_f).round(1)})"

# times = [
#   { nome: "Backend",  membros: ["Felippe", "Ana", "Bruno"] },
#   { nome: "Frontend", membros: ["Carla"] },
#   { nome: "DevOps",   membros: ["Diego", "Rita"] }
# ]

# mais_membros = times.max_by { |time| time[:membros].length.to_f}
# menos_membros = times.min_by { |time| time[:membros].length.to_f}

# membro_flex_mais = mais_membros[:membros].length > 1 ? "membros" : "membro"
# membro_flex_menos = menos_membros[:membros].length > 1 ? "membros" : "membro"

# puts "Maior time: #{mais_membros[:nome]} (#{mais_membros[:membros].length.to_f} #{membro_flex_mais})"
# puts "Menor time: #{menos_membros[:nome]} (#{menos_membros[:membros].length.to_f} #{membro_flex_menos})"

# produtos = [
#   { nome: "Notebook", preco: 3500.0 },
#   { nome: "Tablet",   preco: 1200.0 },
#   { nome: "Teclado",  preco: 250.0  },
#   { nome: "Mouse",    preco: 80.0   },
#   { nome: "Monitor",  preco: 1200.0 }
# ]

# p produtos.minmax_by { |produto| produto[:preco]}

# empresa = {
#   departamentos: [
#     {
#       nome: "Tech",
#       times: [
#         { nome: "Backend",  orcamento: 50_000 },
#         { nome: "Frontend", orcamento: 30_000 }
#       ]
#     },
#     {
#       nome: "Design",
#       times: [
#         { nome: "UX", orcamento: 25_000 },
#         { nome: "UI", orcamento: 40_000 }
#       ]
#     }
#   ]
# }

# # p empresa[:departamentos][0][:times][0][:orcamento]
# todos_os_times = empresa[:departamentos].flat_map { |departamento| departamento[:times] }

# maior = todos_os_times.max_by { |time| time[:orcamento] }

# puts "Time com maior orçamento: #{maior[:nome]} (R$ #{maior[:orcamento]})"

# funcionarios = [
#   { nome: "Ana",    salario: 8000,  ativo: true  },
#   { nome: "Bruno",  salario: 12000, ativo: false },
#   { nome: "Carla",  salario: 6000,  ativo: true  },
#   { nome: "Diego",  salario: 9500,  ativo: true  },
#   { nome: "Eva",    salario: 15000, ativo: false }
# ]

# funcionarios_ativos = funcionarios.select do |funcionario|
#   funcionario[:ativo]
# end

# funcionario_maior_salario = funcionarios_ativos.max_by { |funcionario| funcionario[:salario]}

# puts "Funcionário ativo mais bem pago: #{funcionario_maior_salario[:nome]} (R$ #{funcionario_maior_salario[:salario]})"

relatorio = [
  {
    departamento: "Tech",
    funcionarios: [
      { nome: "Felippe", salario: 8000,  performance: 9 },
      { nome: "Ana",     salario: 6000,  performance: 6 },
      { nome: "Bruno",   salario: 9500,  performance: 8 }
    ]
  },
  {
    departamento: "Design",
    funcionarios: [
      { nome: "Carla", salario: 7000, performance: 8 },
      { nome: "Diego", salario: 5500, performance: 5 }
    ]
  }
]

# p relatorio[0][:funcionarios][0][:salario]

relatorio.each do |dep|
  puts dep[:departamento]
  maior_salario = dep[:funcionarios].max_by { |f| f[:salario] }
  maior_performance = dep[:funcionarios].max_by { |f| f[:performance]}
  puts "  Maior salário: #{maior_salario[:nome]} (R$ #{maior_salario[:salario]})"
  puts "  Maior performance: #{maior_performance[:nome]} (R$ #{maior_performance[:performance]})"
end
