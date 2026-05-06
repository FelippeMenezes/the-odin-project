require_relative 'lib/cart'
require_relative 'lib/product'

product1 = Product.new( name: 'product1', price: 10)
product2 = Product.new( name: 'product2', price: 20)
p product1
p product2

cart = Cart.new
p cart
p cart.empty?

cart.add(product1)
cart.add(product2)
p cart
p cart.total
