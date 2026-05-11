class Invoice
  def initialize(discount, tax_calculator)
    @discount = discount
    @tax_calculator = tax_calculator
  end

  def total(price)
    discounted = @discount.apply(price)
    p discounted
    p @tax_calculator.calculate(discounted)
    discounted + @tax_calculator.calculate(discounted)
  end
end
