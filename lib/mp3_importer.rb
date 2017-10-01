require_relative 'artist.rb'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir["#{@path}/**/*.mp3"]
  end
end
