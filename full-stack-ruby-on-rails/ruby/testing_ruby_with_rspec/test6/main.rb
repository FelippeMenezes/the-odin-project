require_relative 'lib/playlist'

playlist = Playlist.new
p playlist

musica1 = "musica1"

playlist.adicionar(musica1)
p playlist

playlist.remover(musica1)
p playlist

p playlist.vazia?
