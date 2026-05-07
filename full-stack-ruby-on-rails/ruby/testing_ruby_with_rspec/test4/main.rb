require_relative 'lib/order'
require_relative 'lib/product'

order = Order.new
p order
p order.confirm

product1 = Product.new(name: 'product1', price: 10)
product2 = Product.new(name: 'product2', price: 20)
p product1, product2

order.add_item(product1)
p order
p order.total
p order.confirm
p order

order.add_item(product2)
p order
p order.total

