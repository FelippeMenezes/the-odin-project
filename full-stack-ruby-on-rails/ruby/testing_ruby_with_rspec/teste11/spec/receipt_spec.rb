require './lib/receipt'
require './lib/order'

RSpec.describe Receipt do
  let(:order) { Order.new([100])}
  subject {described_class.new(order)}
  describe '#summary' do
    context 'quando ototal é 100' do
      it 'retorna a string correta' do
        expect(subject.summary).to eq('Total: 100')
      end
    end
  end

  describe '#empty?' do
    context 'quando há itens' do
      it 'retorna false' do
        expect(subject).not_to be_empty
      end
    end
  end
end
