frutas = ["maçã", "banana", "uva", "laranja"]

frutas.each { |fruta| puts fruta}

times = ["Flamengo", "Vasco", "Botafogo", "Fluminense"]

times.each_with_index { |time, index| puts "#{index + 1}. #{time}"}

pessoa = { nome: "Felippe", idade: 28, cidade: "Rio" }

pessoa.each { |key, value| puts "#{key}: #{value}"}

produtos = [
  { nome: "Teclado", preco: 250 },
  { nome: "Mouse",   preco: 80  },
  { nome: "Monitor", preco: 1200 }
]

produtos.each { |item| puts "#{item[:nome]} custa R$ #{item[:preco]}"}

numeros = [3, 8, 1, 12, 5, 9, 2]

numeros.each { |numero| puts numero if numero > 5 }

escola = {
  turmas: [
    { nome: "Turma A", alunos: ["Felippe", "Ana", "Bruno"] },
    { nome: "Turma B", alunos: ["Carla", "Pedro"] }
  ]
}

escola[:turmas].each do |turma|
  puts turma[:nome]
  turma[:alunos].each { |aluno| puts " - #{aluno}" }
end

pedidos = [
  { produto: "Pizza",    valor: 45.0 },
  { produto: "Coca",     valor: 8.0  },
  { produto: "Sorvete",  valor: 18.0 }
]

total = pedidos.sum { |item| item[:valor] }
puts "Total do pedido: R$ #{total}"

empresa = {
  departamentos: [
    {
      nome: "Tech",
      times: [
        { nome: "Backend",  membros: ["Felippe", "Ana"] },
        { nome: "Frontend", membros: ["Bruno"] }
      ]
    },
    {
      nome: "Design",
      times: [
        { nome: "UX", membros: ["Carla", "Diego"] }
      ]
    }
  ]
}

empresa[:departamentos].each do |departamento|
  puts departamento[:nome]
  departamento[:times].each do |time|
    puts " #{time[:nome]}: #{time[:membros].join(", ")}"
  end
end

vendas = [
  { vendedor: "Ana",     valor: 1200.0, meta: 1000.0 },
  { vendedor: "Bruno",   valor: 800.0,  meta: 1000.0 },
  { vendedor: "Carla",   valor: 1050.0, meta: 1000.0 }
]

vendas.each do |item|
  if item[:valor] > item[:meta]
    puts "#{item[:vendedor]} - Bateu a meta! (#{item[:valor]})"
  else
    puts "#{item[:vendedor]} - Abaixo da meta! (#{item[:valor]})"
  end
end

catalogo = [
  {
    categoria: "Eletrônicos",
    produtos: [
      { nome: "Notebook", preco: 3500.0, estoque: 5  },
      { nome: "Tablet",   preco: 1200.0, estoque: 0  }
    ]
  },
  {
    categoria: "Periféricos",
    produtos: [
      { nome: "Teclado",  preco: 250.0,  estoque: 12 },
      { nome: "Mouse",    preco: 80.0,   estoque: 0  },
      { nome: "Monitor",  preco: 1200.0, estoque: 3  }
    ]
  }
]

catalogo.each do |item|
  puts "#{item[:categoria]}:"
  item[:produtos].each do |produto|
    if produto[:estoque] > 0
      puts " #{produto[:nome]} - #{produto[:preco]} (#{produto[:estoque]} em estoque)"
    end
  end
end
