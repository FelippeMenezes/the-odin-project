require './lib/invoice'

RSpec.describe Invoice do
  let(:discount) { double('discount')}
  let(:tax_calculator) { double('tax_calculator')}
  subject { described_class.new(discount, tax_calculator) }

  describe '#total' do
    context 'quando aplicado' do
      before do
      allow(discount).to receive(:apply).and_return(90.0)
      allow(tax_calculator).to receive(:calculate).and_return(13.5)
      end
      it 'retorna o total com discount e taxes somados' do
        expect(subject.total(100)). to eq(103.5)
      end
    end
  end
end
