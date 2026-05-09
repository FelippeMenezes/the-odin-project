require './lib/conta_bancaria'

RSpec.describe ContaBancaria do
  let(:conta_bancaria) { ContaBancaria.new('Mark')}

  describe '#initialize' do
    context 'quando a conta bancária é criada' do
      it 'inicia com saldo zero' do
        expect(conta_bancaria.saldo).to eq(0)
      end

      it 'registra o titular corretamente' do
        expect(conta_bancaria.titular).to eq('Mark')
      end

      it 'começa sem histórico' do
        expect(conta_bancaria.historico).to be_empty
      end
    end
  end

  describe '#depositar' do
    context 'quando o valor do depósito é válido' do
      before { conta_bancaria.depositar(99999)}
      it 'conta bancária tem o saldo atualizado' do
        expect(conta_bancaria.saldo).to eq(99999)
      end

      it 'retorna true' do
        expect(conta_bancaria.depositar(1)).to eq(true)
      end
    end

    context 'quando o valor do depósito é inválido' do
      before { conta_bancaria.depositar(-99999)}
      it 'saldo da conta bancária não é atualizado' do
        expect(conta_bancaria.saldo).to eq(0)
      end

      it 'retorna false' do
        expect(conta_bancaria.depositar(-99999)).to eq(false)
      end
    end
  end

  describe '#sacar' do
    context 'quando saldo da conta bancária é sufucuiente' do
      before do
        conta_bancaria.depositar(99999)
        conta_bancaria.sacar(9999)
      end
      it 'saldo da conta bancária é atualizado' do
        expect(conta_bancaria.saldo).to eq(90000)
      end

      it 'retorna true' do
        expect(conta_bancaria.sacar(10)).to eq(true)
      end
    end

    context 'quando saldo da conta bancária é insuficiente' do
      before do
        conta_bancaria.sacar(10)
      end
      it 'saldo da conta bancária não é atualizado' do
        expect(conta_bancaria.saldo).to eq(0)
      end

      it 'retorna false' do
        expect(conta_bancaria.sacar(10)).to eq(false)
      end
    end
  end

  describe '#extrato' do
    context 'quando a conta bancária não possui movimentações' do
      it 'informa ausência de movimentações' do
        expect(conta_bancaria.extrato).to eq('Sem movimentações')
      end
    end

    context 'quando a conta bancário possui histórico de depósito(s) e saque(s)' do
      before do
        conta_bancaria.depositar(100000)
        conta_bancaria.sacar(10)
      end
      it 'informa o histŕico de movimentações' do
        expect(conta_bancaria.extrato).to eq('Depósito: +100000, Saque: -10')
      end
    end
  end
end
