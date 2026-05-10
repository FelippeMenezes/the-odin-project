require_relative 'lib/subscription'

subscription1 = Subscription.new('Mary', :basic)
p subscription1
p subscription1.activate!
p subscription1.price
p subscription1.affordable?(100)
p subscription1.summary
