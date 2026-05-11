require_relative 'lib/cart'

discount = 10

cart1 = Cart.new(discount)
p cart1
p cart1.final_price(100)
