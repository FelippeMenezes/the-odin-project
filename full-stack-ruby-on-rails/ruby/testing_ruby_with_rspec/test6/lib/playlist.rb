class Playlist
  attr_reader :musicas

  def initialize
    @musicas = []
  end

  def adicionar(musica)
    @musicas << musica
  end

  def remover(musica)
    @musicas.delete(musica)
  end

  def vazia?
    @musicas.empty?
  end
end
