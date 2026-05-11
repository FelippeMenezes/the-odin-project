require_relative 'lib/order'
require_relative 'lib/payment_gateway'

payment_gateway1 = PaymentGateway.new
p payment_gateway1
p payment_gateway1.charge(100)
p payment_gateway1

order1 = Order.new(payment_gateway1)
p order1
p order1.checkout(100)
