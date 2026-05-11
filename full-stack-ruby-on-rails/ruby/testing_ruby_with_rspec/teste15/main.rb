require_relative 'lib/discount'
require_relative 'lib/tax_calculator'
require_relative 'lib/invoice'

tax_calculator1 = TaxCalculator.new
p tax_calculator1

discount1 = Discount.new
p discount1

invoice1 = Invoice.new(discount1, tax_calculator1)
p invoice1
p invoice1.total(100)
