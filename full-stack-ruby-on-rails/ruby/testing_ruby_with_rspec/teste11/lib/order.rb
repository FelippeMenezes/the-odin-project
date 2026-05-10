class Order
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def total
    @items.sum
  end
end
