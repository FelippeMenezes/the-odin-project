require './lib/bank_account'

RSpec.describe BankAccount do
  subject {described_class.new('Mark')}

  describe '#initialize' do
    context 'quando inicializada' do
      it 'o saldo é 0(zero)' do
        expect(subject.balance).to eq(0)
      end
    end
  end

  describe '#empty?' do
    context 'quando o saldo é 0(zero)' do
      it 'retorna true' do
        expect(subject.empty?).to eq(true)
      end
    end
  end

  describe '#positive?' do
    context 'quando o saldo é 0(zero)' do
      it 'retorna false' do
        expect(subject.positive?).to eq(false)
      end
    end
  end
end
