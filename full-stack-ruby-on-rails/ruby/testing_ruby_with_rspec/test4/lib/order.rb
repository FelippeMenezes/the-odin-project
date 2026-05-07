class Order
  attr_reader :status, :items

  def initialize
    @status = :pending
    @items = []
  end

  def add_item(product)
    @items << product
  end

  def confirm
    return false if @items.empty?
    @status = :confirmed
    true
  end

  def total
    @items.sum(&:price)
  end
end
