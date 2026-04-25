numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p numeros.group_by{ |numero| numero.even? }
p numeros.group_by{ |numero| numero.odd? }

p numeros.group_by{ |numero| numero.to_s.to_sym }

palavras = ["ruby", "rails", "react", "python", "rust", "java", "go"]

p palavras.group_by { |palavra| palavra[0] }
p palavras.group_by { |palavra| palavra.chars.first }

produtos = [
  { nome: "Teclado",  categoria: "periferico", preco: 250  },
  { nome: "Mouse",    categoria: "periferico", preco: 80   },
  { nome: "Monitor",  categoria: "eletronico", preco: 1200 },
  { nome: "Notebook", categoria: "eletronico", preco: 3500 },
  { nome: "Webcam",   categoria: "periferico", preco: 200  }
]

p produtos.group_by { |produto| produto[:categoria] }

group_by_categorias =  produtos.group_by { |produto| produto[:categoria] }

p group_by_categorias.transform_values { |value| value.map { |value| value[:nome]  } }

funcionarios = [
  { nome: "Ana",    salario: 3000  },
  { nome: "Bruno",  salario: 8000  },
  { nome: "Carla",  salario: 5000  },
  { nome: "Diego",  salario: 12000 },
  { nome: "Eva",    salario: 4500  }
]

funcionarios_agrupados =  funcionarios.group_by do |funcionario|
  salario = funcionario[:salario]
  if salario <= 5000
    "junior"
  elsif salario > 500 && salario <=9000
    "pleno"
  else
    "senior"
  end
end

p funcionarios_agrupados

pedidos = [
  { produto: "Pizza",   status: :pago     },
  { produto: "Coca",    status: :pendente },
  { produto: "Sorvete", status: :pago     },
  { produto: "Suco",    status: :pendente },
  { produto: "Água",    status: :pago     }
]

pedidos_agrupados = pedidos.group_by { |pedido| pedido[:status]}

pedidos_agrupados.each do |status, items|
  puts "#{status}: #{items.length}"
end

alunos = [
  { nome: "Felippe", notas: [8, 9, 7]  },
  { nome: "Ana",     notas: [10, 6, 8] },
  { nome: "Bruno",   notas: [4, 5, 3]  },
  { nome: "Carla",   notas: [9, 9, 10] },
  { nome: "Diego",   notas: [6, 5, 7]  }
]

alunos_por_media = alunos.group_by do |aluno|
  media_aluno = aluno[:notas].sum / aluno[:notas].length.to_f
  media_aluno >= 6 ? :aprovado : :reprovado
end

p alunos_por_media


vendas = [
  { vendedor: "Ana",    mes: "Janeiro",   valor: 8500.0  },
  { vendedor: "Bruno",  mes: "Janeiro",   valor: 4200.0  },
  { vendedor: "Ana",    mes: "Fevereiro", valor: 9300.0  },
  { vendedor: "Bruno",  mes: "Fevereiro", valor: 6100.0  },
  { vendedor: "Ana",    mes: "Março",     valor: 7800.0  },
  { vendedor: "Bruno",  mes: "Março",     valor: 3800.0  }
]

vendedor_agrupado = vendas.group_by { |venda| venda[:vendedor]}

p vendedor_agrupado

total_por_vendedor =  vendedor_agrupado.transform_values { |value| value.map { |value| value[:valor] }.sum }
p total_por_vendedor

empresa = {
  departamentos: [
    {
      nome: "Tech",
      funcionarios: [
        { nome: "Felippe", senioridade: :pleno  },
        { nome: "Ana",     senioridade: :junior },
        { nome: "Bruno",   senioridade: :senior }
      ]
    },
    {
      nome: "Design",
      funcionarios: [
        { nome: "Carla", senioridade: :pleno  },
        { nome: "Diego", senioridade: :junior }
      ]
    }
  ]
}

empresa[:departamentos].each do |departamento |
  puts departamento[:nome]
  funcionario_agrupados_senioridade = departamento[:funcionarios].group_by { |funcionario| funcionario[:senioridade]}

  funcionario_agrupados_senioridade.each do |senioridade, funcionarios|
    nomes = funcionarios.map { |funcionario| funcionario[:nome] }.join(", ")
    puts "  #{senioridade}: #{nomes}"
  end
end

pedidos = [
  { id: 1, cliente: "Ana",    produto: "Notebook", valor: 3500.0, status: :pago     },
  { id: 2, cliente: "Bruno",  produto: "Mouse",    valor: 80.0,   status: :pendente },
  { id: 3, cliente: "Ana",    produto: "Teclado",  valor: 250.0,  status: :pago     },
  { id: 4, cliente: "Carla",  produto: "Monitor",  valor: 1200.0, status: :pendente },
  { id: 5, cliente: "Bruno",  produto: "Headset",  valor: 350.0,  status: :pago     },
  { id: 6, cliente: "Carla",  produto: "Webcam",   valor: 200.0,  status: :pago     }
]

pedido_agrupado = pedidos.group_by { |pedido| pedido[:cliente]}

pedido_agrupado.each do |pedido|
  puts pedido[0]
  total = []
  pedido[1].each do |item|
    puts "  #{item[:produto]} - R$ #{item[:valor]} (#{item[:status]})"
    total = pedido[1].sum { |item| item[:valor] }
    puts "  Total: R$ #{total}"
  end
end
