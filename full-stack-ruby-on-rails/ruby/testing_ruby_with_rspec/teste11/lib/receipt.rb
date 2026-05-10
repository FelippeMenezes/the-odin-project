class Receipt
  def initialize(order)
    @order = order
  end

  def summary
    "Total: #{@order.total}"
  end

  def empty?
    @order.items.empty?
  end
end
