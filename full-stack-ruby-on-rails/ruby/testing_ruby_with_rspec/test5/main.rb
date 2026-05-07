require_relative 'lib/discount'

discount_percentage = Discount.new(type: :percentage, value: 110)
discount_fixed = Discount.new(type: :fixed, value: 65)
p discount_percentage
p discount_fixed
p discount_percentage.apply(50)
p discount_fixed.apply(50)
p discount_percentage
p discount_fixed


