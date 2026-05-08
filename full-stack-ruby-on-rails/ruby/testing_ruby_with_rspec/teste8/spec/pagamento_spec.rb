require './lib/pagamento'

RSpec.describe Pagamento do
  let(:pagamento100) { Pagamento.new(100)}

  describe '#status' do
    context 'quando pagamento é incializado' do
      it 'retorna pendente' do
        expect(pagamento100.status).to eq(:pendente)
      end
    end
  end

  describe '#aprovar' do
    context 'quando pagametno é aprovado' do
      it 'altera o status do pagamento para aprovado retorna true' do
        expect(pagamento100.aprovar).to eq(true)
        expect(pagamento100.status).to eq(:aprovado)
      end
    end

    context 'quando valor do pagamento é 0(zero)' do
      let(:pagamento0) { Pagamento.new(0)}
      it 'não altera o status do pagamento e retorna false' do
        expect(pagamento0.aprovar).to eq(false)
        expect(pagamento0.status).to eq(:pendente)
      end
    end
  end

  describe '#recusar' do
    context 'após recusar pagamento' do
      it 'status é alterado para recusado' do
        pagamento100.recusar('sem fundos')
        expect(pagamento100.status).to eq(:recusado)
      end
    end
  end

  describe '#resumo' do
    context 'quando pagamento aprovado' do
      before { pagamento100.aprovar }
      it 'retorna a string correta' do
        expect(pagamento100.resumo).to eq('Pagamento de R$100 — aprovado')
      end
    end
  end
end
