require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def artist
    self.artist = @artist
  end

  def self.new_by_filename(filename)
    #binding.pry
    filename = filename.split(" - ")
    new_song = Song.new(filename[1])
    new_song.artist = filename[0]
  end
end
