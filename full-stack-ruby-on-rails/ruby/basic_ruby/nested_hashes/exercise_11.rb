numeros = [3, 7, 2, 8, 5]

# soma_numeros = numeros.reduce(0) do | acumulador, numero |
#   acumulador += numero
#   acumulador
# end

soma_numeros = numeros.reduce(0) { |acc, n| acc += n; acc }

p soma_numeros
p numeros.reduce(:+)

numeros = [2, 3, 4, 5]

# multiply_numeros = numeros.reduce(1) do | acc, numero|
#   acc *= numero
#   acc
# end

multiply_numeros = numeros.reduce(1) { |acc, n| acc * n }

p multiply_numeros
p numeros.reduce(1, :*)

palavras = ["Ruby", "é", "muito", "legal"]

# reduce_palavras = palavras.reduce("") do | acc, palavra|
#   palavras.join(" ")
# end

reduce_palavras = palavras.reduce { |acc, palavra| "#{acc} #{palavra}" }

p reduce_palavras

numeros = [1, 2, 3, 4, 5]

numeros_pares_dobrados =  numeros.reduce([]) do |acc, numero |
  if numero.even?
    acc << numero * 2
  end
  acc
end

p numeros_pares_dobrados

palavras = ["ana", "bruno", "ana", "carla", "bruno", "ana"]

contador_de_palavras = palavras.reduce(Hash.new(0)) do | acc, palavra|
  acc[palavra] += 1
  acc
end

p contador_de_palavras

pedidos = [
  { produto: "Pizza",   valor: 45.0 },
  { produto: "Coca",    valor: 8.0  },
  { produto: "Sorvete", valor: 18.0 },
  { produto: "Suco",    valor: 12.0 }
]

p valor_total_pedidos = pedidos.map { |pedido| pedido[:valor] }.reduce(:+)

funcionarios = [
  { nome: "Ana",   salario: 6000 },
  { nome: "Bruno", salario: 8000 },
  { nome: "Carla", salario: 7000 }
]

funcionarios_hash = funcionarios.reduce(Hash.new(0)) do |acc, funcionario|
  acc[funcionario[:nome]] = funcionario[:salario]
  acc
end

p funcionarios_hash

turmas = [
  { nome: "Turma A", alunos: ["Felippe", "Ana", "Bruno"] },
  { nome: "Turma B", alunos: ["Carla", "Pedro"]          },
  { nome: "Turma C", alunos: ["Diego"]                   }
]

total_alunos = turmas.reduce(0) do |acc, turma|
  acc += turma[:alunos].length
  acc
end

p total_alunos

numeros = [3, 1, 4, 1, 5, 9, 2, 6]

min_max = numeros.reduce({ min: numeros[0], max: numeros[0]}) do |acc, numero|
  acc[:min] = numero if numero < acc[:min]
  acc[:max] = numero if numero > acc[:max]
  acc
end

p min_max

vendas = [
  { vendedor: "Ana",   produto: "Notebook", valor: 3500.0, pago: true  },
  { vendedor: "Bruno", produto: "Mouse",    valor: 80.0,   pago: false },
  { vendedor: "Ana",   produto: "Teclado",  valor: 250.0,  pago: true  },
  { vendedor: "Bruno", produto: "Headset",  valor: 350.0,  pago: true  },
  { vendedor: "Carla", produto: "Monitor",  valor: 1200.0, pago: false },
  { vendedor: "Carla", produto: "Webcam",   valor: 200.0,  pago: true  }
]

relatorio_completo = vendas.reduce({ total_geral: 0, total_pago: 0, total_pendente: 0, quantidade_vendas: 0}) do |acc,venda|
  acc[:total_geral] += venda[:valor]
  if venda[:pago]
    acc[:total_pago] += venda[:valor]
    acc
  end
  if venda[:pago] == false
    acc[:total_pendente] += venda[:valor]
    acc
  end
  acc[:quantidade_vendas] += 1
  acc
end

p relatorio_completo
