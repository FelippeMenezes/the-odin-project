require './lib/password_validator'

RSpec.describe PasswordValidator do
  subject { described_class.new('1234abcd') }

  describe '#valid?' do
    context 'quando password é válido' do
      it 'retorna true' do
        expect(subject.valid?).to eq(true)
      end
    end

    context 'quando password é inválido' do
      subject { described_class.new('12ab')}
      it 'retorna false' do
        expect(subject.valid?).to eq(false)
      end
    end
  end

  describe '#errors' do
    context 'quando o password não tem erro' do
      it 'retorna um array vazio' do
        expect(subject.errors).to eq([])
      end
    end

    context 'quando é muito curto' do
      subject { described_class.new('12ab')}
      it 'retorna um array com a mensagem de erro ["too short"]' do
        expect(subject.errors).to eq(['too short'])
      end
    end

    context 'quando não tem letra' do
      subject { described_class.new('1234567890') }
      it 'retorna um array com a mensagem de erro ["needs a letter"]' do
        expect(subject.errors).to eq(["needs a letter"])
      end
    end

    context 'quando não tem letra' do
      subject { described_class.new('1234567890abcdefghijlmnopqrstuvxz') }
      it 'retorna um array com a mensagem de erro ["too long"]' do
        expect(subject.errors).to eq(["too long"])
      end
    end

    context 'quando não tem letra' do
      subject { described_class.new('1234567890') }
      it 'retorna um array com a mensagem de erro ["needs a letter"]' do
        expect(subject.errors).to eq(["needs a letter"])
      end
    end

    context 'quando tem mais de um erro' do
      subject { described_class.new('12345678234534523453245234523452345234523452345325') }
      it 'retorna um array com a mensagem contendo erros ["too long", "needs a letter"]' do
        expect(subject.errors).to eq(["too long", "needs a letter"])
      end
    end
  end
end
