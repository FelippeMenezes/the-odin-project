class Order
  def initialize(payment_gateway)
    @payment_gateway = payment_gateway
  end

  def checkout(amount)
    if @payment_gateway.charge(amount)
      "Pedido confirmado"
    else
      "Pagamento recusado"
    end
  end
end
