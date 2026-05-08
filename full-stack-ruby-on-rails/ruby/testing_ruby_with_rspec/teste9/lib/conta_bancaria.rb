class ContaBancaria
  attr_reader :saldo, :titular, :historico

  def initialize(titular, saldo_inicial = 0)
    @titular   = titular
    @saldo     = saldo_inicial
    @historico = []
  end

  def depositar(valor)
    return false if valor <= 0
    @saldo += valor
    @historico << "Depósito: +#{valor}"
    true
  end

  def sacar(valor)
    return false if valor <= 0 || valor > @saldo
    @saldo -= valor
    @historico << "Saque: -#{valor}"
    true
  end

  def extrato
    return "Sem movimentações" if @historico.empty?
    @historico.join(", ")
  end
end
