escola = {
  turmas: [
    {
      nome: "Turma A",
      alunos: [
        { nome: "Felippe", notas: [8, 9, 7]  },
        { nome: "Carla",   notas: [10, 10, 9] },
        { nome: "Bruno",   notas: [4, 5, 3]  }
      ]
    },
    {
      nome: "Turma B",
      alunos: [
        { nome: "Ana",   notas: [7, 8, 6]  },
        { nome: "Pedro", notas: [9, 9, 10] },
        { nome: "Rita",  notas: [5, 4, 6]  }
      ]
    }
  ]
}

def media(notas)
  notas.sum / notas.length.to_f
end

escola[:turmas].each do |turma|
  puts turma[:nome]
  alunos_aprovados = turma[:alunos]
    .select { |aluno| media(aluno[:notas]) > 6 }
    .map { |aluno| aluno[:nome]}
  puts "Aprovados: #{alunos_aprovados.join(", ")}"

  alunos_reprovados = turma[:alunos]
    .select { |aluno| media(aluno[:notas]) < 6 }
    .map { |aluno| aluno[:nome]}
  puts "Reprovados: #{alunos_reprovados.join(", ")}"

  melhor_aluno = turma[:alunos].max_by { |aluno| media(aluno[:notas]) }[:nome]
  puts "Melhor aluno: #{melhor_aluno}"
end

