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
    Song.new(filename[1])
    Artist.find_or_create_by_name(filename[0])
  end
end
