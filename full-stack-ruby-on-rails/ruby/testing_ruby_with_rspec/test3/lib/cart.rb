class Cart
  attr_accessor :items

  def initialize
    @items = []
  end

  def add(product)
    @items << product
  end

  def total
    @items.sum(&:price)
  end

  def empty?
    @items.empty?
  end
end
