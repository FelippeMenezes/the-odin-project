require_relative 'lib/conta_bancaria'

conta_bancaria = ContaBancaria.new('Phill', 100000)
p conta_bancaria
p conta_bancaria.extrato

p conta_bancaria.depositar(50000)
p conta_bancaria

p conta_bancaria.sacar(100)
p conta_bancaria

p conta_bancaria.extrato
