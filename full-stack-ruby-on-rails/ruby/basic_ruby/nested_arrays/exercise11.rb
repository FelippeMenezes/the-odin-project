frases = [
  "ruby é elegante",
  "flat map achata",
  "código limpo importa"
]

array_arrays_de_plavras = frases.flat_map { |elemento| elemento.split }

p array_arrays_de_plavras

usuarios = [
  { nome: "Ana",    tags: ["ruby", "rails"] },
  { nome: "Bruno",  tags: ["js", "react", "node"] },
  { nome: "Carla",  tags: ["ruby", "sql"] }
]

todas_tags = usuarios.flat_map do |elemento|
  elemento[:tags]
end

p todas_tags

usuarios = [
  { nome: "Ana",    tags: ["ruby", "rails"] },
  { nome: "Bruno",  tags: ["js", "react", "node"] },
  { nome: "Carla",  tags: ["ruby", "sql"] },
  { nome: "Eduardo", tags: ["python", "django"] }
]

tags_usuarios_vogal = usuarios.select { |usuario| usuario[:nome].start_with?("A", "E", "I", "O", "U") }.flat_map do |usuario|
  usuario[:tags]
end

p tags_usuarios_vogal

pedidos = [
  { id: 1, itens: ["notebook", "mouse", "teclado"] },
  { id: 2, itens: ["mouse", "headset"] },
  { id: 3, itens: ["notebook", "webcam"] }
]

itens_unicos = pedidos.flat_map { |pedido| pedido[:itens] }.uniq.sort

p itens_unicos

cursos = [
  {
    nome: "Ruby",
    modulos: [
      { aulas: ["Sintaxe", "Blocos"] },
      { aulas: ["Classes", "Módulos"] }
    ]
  },
  {
    nome: "Rails",
    modulos: [
      { aulas: ["Rotas", "Controllers"] }
    ]
  }
]

formato_modulo_codigo = cursos.flat_map do |curso|
  curso[:modulos].flat_map do |modulo|
    modulo[:aulas].map do |aula|
      "#{curso[:nome]}: #{aula}"
    end
  end
end
p formato_modulo_codigo
