require_relative 'lib/estoque'
require_relative 'lib/loja'

estoque = Estoque.new()
p estoque
estoque.adicionar('notebook', 3)
estoque.adicionar('mouse', 10)
p estoque.disponivel?('notebook')
p estoque.quantidade('notebook')

loja = Loja.new('Lojas99', estoque)
p loja
p loja.pode_vender?('notebook')
p loja.descricao_estoque('notebook')

