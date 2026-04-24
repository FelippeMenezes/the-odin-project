# numeros = [4, 17, 3, 22, 8, 31, 15, 6]

# p numeros.select { |numero| numero.even? }

# palavras = ["ruby", "rails", "react", "python", "rust", "java"]

# p palavras.select { |palavras| palavras.start_with?("r") }

# produtos = [
#   { nome: "Teclado",  preco: 250  },
#   { nome: "Mouse",    preco: 80   },
#   { nome: "Monitor",  preco: 1200 },
#   { nome: "Headset",  preco: 350  },
#   { nome: "Webcam",   preco: 200  }
# ]

# p produtos.select { |produto| produto[:preco] > 200 }

# funcionarios = [
#   { nome: "Ana",    salario: 3000, ativo: true  },
#   { nome: "Bruno",  salario: 8000, ativo: false },
#   { nome: "Carla",  salario: 5000, ativo: true  },
#   { nome: "Diego",  salario: 12000, ativo: true },
#   { nome: "Eva",    salario: 4500, ativo: false }
# ]

# p funcionarios.select { |funcionario| funcionario[:ativo] && funcionario[:salario] > 4000 }

# turmas = [
#   { nome: "Turma A", alunos: ["Felippe", "Ana", "Bruno"] },
#   { nome: "Turma B", alunos: ["Carla"] },
#   { nome: "Turma C", alunos: ["Diego", "Eva", "Rita", "João"] },
#   { nome: "Turma D", alunos: ["Pedro", "Lara"] }
# ]

# p turmas.select { |turma| turma[:alunos].length > 2}

# pedidos = [
#   { produto: "Pizza",   valor: 45.0,  pago: true  },
#   { produto: "Coca",    valor: 8.0,   pago: false },
#   { produto: "Sorvete", valor: 18.0,  pago: true  },
#   { produto: "Suco",    valor: 12.0,  pago: false }
# ]

# p pedidos.select {|item| item[:pago] == false}.map { |item| item[:produto] }

# empresa = {
#   departamentos: [
#     {
#       nome: "Tech",
#       times: [
#         { nome: "Backend",  vagas: 2 },
#         { nome: "Frontend", vagas: 0 },
#         { nome: "DevOps",   vagas: 1 }
#       ]
#     },
#     {
#       nome: "Design",
#       times: [
#         { nome: "UX",  vagas: 0 },
#         { nome: "UI",  vagas: 3 }
#       ]
#     }
#   ]
# }

# resultado = empresa[:departamentos].map do |departamento|
#   departamento[:times].select { |time| time[:vagas] > 0 }.map { |time| time[:nome] }
# end

# p resultado.flatten

# alunos = [
#   { nome: "Felippe", notas: [8, 9, 7]   },
#   { nome: "Ana",     notas: [10, 6, 8]  },
#   { nome: "Bruno",   notas: [4, 5, 3]   },
#   { nome: "Carla",   notas: [9, 9, 10]  },
#   { nome: "Diego",   notas: [6, 5, 7]   }
# ]

# p alunos.select { |aluno| (aluno[:notas].sum / aluno[:notas].length) > 7 }

# estoque = [
#   { nome: "Notebook", preco: 3500.0, estoque: 5,  categoria: "eletronico" },
#   { nome: "Tablet",   preco: 1200.0, estoque: 0,  categoria: "eletronico" },
#   { nome: "Teclado",  preco: 250.0,  estoque: 12, categoria: "periferico" },
#   { nome: "Mouse",    preco: 80.0,   estoque: 0,  categoria: "periferico" },
#   { nome: "Monitor",  preco: 1200.0, estoque: 3,  categoria: "eletronico" },
#   { nome: "Webcam",   preco: 200.0,  estoque: 7,  categoria: "periferico" }
# ]

# p estoque.select { |item| item[:categoria] == "eletronico" && item[:estoque] > 0 }

# p estoque.reject { |item| item[:estoque] != 0 }

# relatorio = [
#   {
#     departamento: "Tech",
#     funcionarios: [
#       { nome: "Felippe", salario: 8000,  ativo: true,  performance: 9 },
#       { nome: "Ana",     salario: 6000,  ativo: true,  performance: 6 },
#       { nome: "Bruno",   salario: 9500,  ativo: false, performance: 8 }
#     ]
#   },
#   {
#     departamento: "Design",
#     funcionarios: [
#       { nome: "Carla", salario: 7000, ativo: true,  performance: 8 },
#       { nome: "Diego", salario: 5500, ativo: true,  performance: 5 }
#     ]
#   }
# ]

#?
