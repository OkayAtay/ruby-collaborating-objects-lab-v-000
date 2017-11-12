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
    @artist = split_filename[0]
    @name = split_filename[1]
    Song.new(name)
    #filename = filename.split(" - ")
    #Song.new(filename)
  end
end
