require './lib/order'

RSpec.describe Order do
  let(:order) { Order.new()}
  let(:product1) { Product.new(name: 'product1', price: 10) }
  let(:product2) { Product.new(name: 'product2', price: 20) }

  describe '#empty?' do
    it "cart starts empty" do
      expect(order.items).to be_empty
    end
  end

  describe '#add_item' do
    it 'adds product to cart item' do
      order.add_item(product1)
      expect(order.items).to include(product1)
    end
  end

  describe '#confirm' do

    it 'returns false if items is empty' do
      expect(order.confirm).to be(false)
    end
    it 'turns order status confirmed and retruns true' do
      order.add_item(product1)
      expect(order.confirm).to be(true)
      expect(order.status).to be(:confirmed)
    end
  end

  describe '#total' do
    it 'verifify total price of items in cart' do
      order.add_item(product1)
      order.add_item(product2)
      expect(order.total).to eq(30)
    end
  end
end

