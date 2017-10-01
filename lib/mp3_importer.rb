require_relative 'artist.rb'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    array_of_files = Dir["#{@path}/**/*.mp3"]
    normalized_files = array_of_files.collect do |file|
      broken_file = file.split("#{@path}/")
      broken_file
    end
  end
end

#
