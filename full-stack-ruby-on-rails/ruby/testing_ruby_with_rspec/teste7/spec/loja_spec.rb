# frozen_string_literal: true

require './lib/loja'
require './lib/estoque'

RSpec.describe Loja do
  let(:estoque1) { Estoque.new() }
  let(:lojas99) { Loja.new('Lojas99', estoque1) }

  before do
    estoque1.adicionar('Teclado', 5)
  end
  describe '#pode_vender?' do
    context 'quando produto está disponível em estoque' do
      it 'retorna true' do
        expect(lojas99.pode_vender?('Teclado')).to be(true)
      end
    end

    context 'quando produto não está disponível em estoque' do
      it 'retorna false' do
        expect(lojas99.pode_vender?('Monitor')).to be(false)
      end
    end
  end

  describe '#descricao_estoque' do
    context 'quando executada' do
      it 'retorna a string correta' do
        expect(lojas99.descricao_estoque('Teclado')).to eq('Lojas99 tem 5 unidade(s) de Teclado')
      end
    end
  end
end
