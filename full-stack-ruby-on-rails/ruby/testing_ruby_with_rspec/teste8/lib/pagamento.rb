class Pagamento
  attr_reader :valor, :status

  def initialize(valor)
    @valor  = valor
    @status = :pendente
  end

  def aprovar
    return false if @valor <= 0
    @status = :aprovado
    true
  end

  def recusar(motivo)
    @status = :recusado
    @motivo = motivo
  end

  def resumo
    "Pagamento de R$#{@valor} — #{@status}"
  end
end
