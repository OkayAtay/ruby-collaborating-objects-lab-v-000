require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end


  def files
    binding.pry
    @files = []
    @files ||= Dir[@path+"/*"].map{|file| file.split("./spec/fixtures/mp3s/")[1]}

  end

  def import
    files.each{|filename| Song.new_by_filename(filename)}
  end
end
