# frozen_string_literal: true

require './lib/playlist'

RSpec.describe Playlist do
  let(:playlist) { Playlist.new() }

  before do
    playlist.adicionar("Bohemian Rhapsody")
    playlist.adicionar("Stairway to Heaven")
  end

  describe '#vazia?' do
    context 'quando a playlist está vazia' do
      before { playlist.musicas.clear }
      it 'retorna true' do
        expect(playlist.vazia?).to eq(true)
      end
    end

    context 'quando a playlist não está vazia' do
      it 'retorna false' do

        expect(playlist.vazia?).to eq(false)
      end
    end
  end

  describe '#adicionar' do
    context 'quando uma música é adicionado a playlist' do
      it 'adiciona a música a playlist' do
        expect(playlist.adicionar("Yesterday")).to eq(["Bohemian Rhapsody", "Stairway to Heaven", "Yesterday"])
      end
    end
  end

  describe '#remover' do
    context 'quando uma música é removida da playlist' do

      it 'exlclui a música selecionada' do
        playlist.remover("Bohemian Rhapsody")
        expect(playlist.musicas).to eq(["Stairway to Heaven"])
      end
    end
  end
end

