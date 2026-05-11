class Cart
  def initialize(discount)
    @discount = discount
  end

  def final_price(price)
    @discount.apply(price)
  end
end

