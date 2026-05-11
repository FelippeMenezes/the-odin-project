require './lib/order'

RSpec.describe Order do
  let(:payment_gateway) { double('payment_gateway')}
  subject { described_class.new(payment_gateway)}

  describe '#checkout' do
    context 'quando o payment_gateway é true' do
      before { allow(payment_gateway).to receive(:charge).and_return(false)}
      it 'retorna "Pedido aprovado"' do
        expect(subject.checkout(100)). to eq('Pedido confirmado')
      end
    end

    context 'quando o payment_gateway é false' do
      before { allow(payment_gateway).to receive(:charge).and_return(false)}
      it 'retorna "Pagamento recusado"' do
        expect(subject.checkout(100)). to eq('Pagamento recusado')
      end
    end
  end
end
