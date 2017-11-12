require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def artist(name)
    self.artist = Artist.find_or_create_by_name()
  end

  def self.new_by_filename(filename)
    #binding.pry
    filename = filename.split(" - ")
    new_song = Song.new(filename[1])
    new_song.artist.name = filename[0]
  end
end
