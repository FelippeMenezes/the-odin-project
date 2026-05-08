class Loja
  attr_reader :nome

  def initialize(nome, estoque)
    @nome = nome
    @estoque = estoque
  end

  def pode_vender?(produto)
    @estoque.disponivel?(produto)
  end

  def descricao_estoque(produto)
    qtd = @estoque.quantidade(produto)
    "#{@nome} tem #{qtd} unidade(s) de #{produto}"
  end
end
