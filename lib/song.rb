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
    split_filename = filename.split(" - ")
    new_song.artist = Artist.find_or_create_by_name(split_filename[0])
    new_song = Song.new(split_filename[1])
    #filename = filename.split(" - ")
    #Song.new(filename)
  end
end
