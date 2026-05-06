require './lib/product'

RSpec.describe Product do
  let(:product1) { Product.new(name: 'product1', price: 10)}
  

  describe '#name' do
    it 'product has a name' do
      expect(product1.name).to eq('product1')
    end
  end

  describe '#price' do
    it 'product has a price' do
      expect(product1.price).to eq(10)
    end
  end
end
