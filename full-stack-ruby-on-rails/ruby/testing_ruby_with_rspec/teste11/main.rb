require_relative 'lib/order'
require_relative 'lib/receipt'

order1 = Order.new([10, 499])
p order1
p order1.total

receipt1 = Receipt.new(order1)
p receipt1
p receipt1.summary
p receipt1.empty?
