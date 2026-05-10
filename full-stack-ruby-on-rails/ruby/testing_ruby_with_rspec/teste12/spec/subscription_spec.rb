require './lib/subscription'

RSpec.describe Subscription do
  subject { described_class.new('Jean', :pro) }

  describe '#initialize' do
    context 'quando inicializada' do
      it 'está inativa' do
        expect(subject.active).to eq(false)
      end
    end
  end

  describe '#activate!' do
    context 'quando inativa' do
      it 'altera para ativa' do
        subject.activate!
        expect(subject.active).to eq(true)
      end
    end
  end

  describe '#price' do
    context 'para cada plano' do
      it 'retorna o valor do plano' do
        expect(subject.price).to eq(79)
      end
    end
  end

  describe '#affordable?'do
    context 'quando o budget é suficiente' do
      it 'retorna true' do
        expect(subject.affordable?(100)).to eq(true)
      end
    end

    context 'quando o budget é insuficiente' do
      it 'retorna false' do
        expect(subject.affordable?(10)).to eq(false)
      end
    end
  end

  describe '#summary' do
    context 'quando executado' do
      it 'retorna a string corretamente' do
        expect(subject.summary).to eq('Jean — pro — R$79')
      end
    end
  end
end
