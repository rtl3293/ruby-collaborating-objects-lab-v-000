require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    binding.pry
    song_info = filename.split("-")

    new_song = Song.new(song_info[1].strip)
    new_song 
  end


end

Song.new_by_filename('Michael Jackson - Black or White - pop.mp3')
