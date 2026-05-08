require_relative 'lib/pagamento'

pagamento100 = Pagamento.new(100)
p pagamento100
p pagamento100.aprovar
p pagamento100
p pagamento100.recusar("teste recusar100")
p pagamento100
p pagamento100.resumo

pagamento0 = Pagamento.new(0)
p pagamento0
p pagamento0.aprovar
p pagamento0
p pagamento0.recusar("teste_recusar0")
p pagamento0
p pagamento0.resumo
