require './lib/cart'
require './lib/product'

RSpec.describe Cart do
  let(:cart) { Cart.new }
  let(:product1) { Product.new(name: 'Notebook', price: 100) }
  let(:product2) { Product.new(name: 'Pen', price: 10) }

  describe '#empty?' do
    it 'cart starts with itens empty' do
      expect(cart.items).to be_empty
    end
  end

  describe '#add' do
    it 'adds an item' do
      cart.add(product1)
      expect(cart.items).to include(product1)
    end
  end

  describe '#total' do
    it 'verifify total price of items in cart' do
      cart.add(product1)
      cart.add(product2)
      expect(cart.total).to eq(110)
    end
  end
end
