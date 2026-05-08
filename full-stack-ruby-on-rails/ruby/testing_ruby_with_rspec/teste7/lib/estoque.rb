class Estoque
  def initialize
    @produtos = {}
  end

  def adicionar(produto, quantidade)
    @produtos[produto] = quantidade
  end

  def disponivel?(produto)
    @produtos.fetch(produto, 0) > 0
  end

  def quantidade(produto)
    @produtos.fetch(produto, 0)
  end
end
